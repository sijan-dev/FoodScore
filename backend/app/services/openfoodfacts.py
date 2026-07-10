import httpx
import logging
from sqlalchemy.orm import Session
from app.services.product_service import create_product
from app.services.score_service import compute_score

logger = logging.getLogger(__name__)


OFF_IMAGE_DOMAINS = ("https://images.openfoodfacts.org/", "https://static.openfoodfacts.org/")


def _extract_nutriments(nutriments: dict) -> dict:
    """Extract nutriment values, skipping missing fields instead of assuming 0."""
    result = {}
    for field in ("sugars_100g", "saturated-fat_100g", "salt_100g", "fiber_100g", "proteins_100g"):
        val = nutriments.get(field)
        if val is not None:
            result[field.replace("-", "_")] = val
    return result


def rewrite_image_url(url: str | None) -> str | None:
    """Rewrite OFF CDN URLs to use world.openfoodfacts.org (more widely accessible)."""
    if not url:
        return url
    for domain in OFF_IMAGE_DOMAINS:
        if url.startswith(domain):
            return url.replace(domain, "https://world.openfoodfacts.org/", 1)
    return url


def cdn_image_url(barcode: str | None) -> str | None:
    """Generate OFF CDN image URL from barcode, or None if barcode is invalid."""
    if not barcode or not isinstance(barcode, str) or not barcode.strip():
        return None
    bc = barcode.strip()
    n = len(bc)
    if n < 8:
        return None
    if n == 8:
        p1, p2, p3 = bc[:3], bc[3:6], bc[6:]
    else:
        p1, p2, p3 = bc[:3], bc[3:7], bc[7:]
    return f"https://world.openfoodfacts.org/images/products/{p1}/{p2}/{p3}/front.en.400.jpg"

def _extract_selected_image(product: dict) -> str | None:
    """Fallback: extract image from selected_images nested structure."""
    selected = product.get("selected_images", {})
    for img_type in ("front", "nutrition", "ingredients"):
        images = selected.get(img_type, {})
        for size in ("small", "display"):
            sized = images.get(size, {})
            for locale in ("en", ""):
                url = sized.get(locale)
                if url and str(url).strip():
                    return str(url).strip()
    return None


async def fetch_from_openfoodfacts(barcode: str) -> dict | None:
    """Fetch product data from OpenFoodFacts API"""
    url = f"https://world.openfoodfacts.org/api/v2/product/{barcode}.json"
    
    try:
        async with httpx.AsyncClient(timeout=10.0) as client:
            response = await client.get(url)
            
            if response.status_code == 404:
                logger.warning(f"Product not found in OpenFoodFacts: {barcode}")
                return None
            
            if response.status_code != 200:
                logger.error(f"OpenFoodFacts API error: {response.status_code} - {response.text}")
                return None
            
            data = response.json()
            
            # Check if product was actually found
            if data.get("status") != 1 or "product" not in data:
                logger.warning(f"Product not found in OpenFoodFacts (status=0): {barcode}")
                return None
            
            product = data["product"]
            
            # Extract relevant data
            image_url = rewrite_image_url(
                product.get("image_front_url")
                or product.get("image_front_small_url")
                or _extract_selected_image(product)
            )
            extracted_data = {
                "barcode": barcode,
                "name": product.get("product_name", "Unknown"),
                "brand": product.get("brands").split(",")[0].strip() if isinstance(product.get("brands"), str) else None,
                "category": product.get("categories").split(",")[0].strip() if isinstance(product.get("categories"), str) else None,
                "image_url": image_url,
                "ingredients_raw": product.get("ingredients_text", ""),
                "additives": [a.split(":", 1)[-1].strip().upper() for a in product.get("additives_tags", []) if a],
                "nutriments": _extract_nutriments(product.get("nutriments", {})),
                "nova_group": v if isinstance(v := product.get("nova_group"), int) and v >= 1 else None,
                "nutri_score": product.get("nutriscore_grade", "").upper() if product.get("nutriscore_grade") else None,
            }
            
            logger.info(f"Successfully fetched product from OpenFoodFacts: {extracted_data['name']}")
            return extracted_data
    
    except httpx.RequestError as e:
        logger.error(f"Request error fetching from OpenFoodFacts: {str(e)}")
        return None
    except Exception as e:
        logger.error(f"Unexpected error in fetch_from_openfoodfacts: {str(e)}")
        return None

def get_product_by_barcode(barcode: str, db: Session):
    """Check if product exists in local database by barcode"""
    from sqlalchemy import text
    try:
        row = db.execute(text("""
            SELECT product_id, name, brand, health_score, is_harmful
            FROM products 
            WHERE barcode = :barcode
        """), {"barcode": barcode}).fetchone()
        
        if row:
            return {
                "product_id": row[0],
                "name": row[1],
                "brand": row[2],
                "health_score": row[3],
                "is_harmful": row[4],
                "source": "local"
            }
    except Exception as e:
        logger.error(f"Error querying local database: {str(e)}")
    
    return None

async def scan_barcode(barcode: str, db: Session) -> dict:
    """Main function: check local DB first, then fetch from OpenFoodFacts"""
    
    if not barcode or not barcode.strip():
        return {"error": "Invalid barcode", "source": "error"}
    
    barcode = barcode.strip()
    
    # Step 1: Check local database
    logger.info(f"Checking local database for barcode: {barcode}")
    local_product = get_product_by_barcode(barcode, db)
    if local_product:
        logger.info(f"Found product in local database: {local_product['name']}")
        return local_product
    
    # Step 2: Fetch from OpenFoodFacts
    logger.info(f"Not found locally, fetching from OpenFoodFacts: {barcode}")
    off_data = await fetch_from_openfoodfacts(barcode)
    
    if not off_data:
        logger.warning(f"Product not found in OpenFoodFacts: {barcode}")
        return {"error": f"Product with barcode {barcode} not found in OpenFoodFacts", "source": "error"}
    
    try:
        # Step 3: Create product in local database
        logger.info(f"Creating product in local database: {off_data['name']}")
        product_id = create_product(off_data, db)
        
        # Step 4: Compute health score (commits internally)
        logger.info(f"Computing health score for product: {product_id}")
        score_result = compute_score(product_id, db)
        
        # Step 5: Return result
        logger.info(f"Successfully scanned and created product: {product_id}")
        return {
            "source": "openfoodfacts",
            "product_id": product_id,
            "name": off_data["name"],
            "brand": off_data["brand"],
            "health_score": score_result.get("health_score"),
            "is_harmful": score_result.get("is_harmful"),
            "traffic_light": score_result.get("traffic_light"),
            "flagged_ingredients": score_result.get("flagged_ingredients")
        }
    except Exception as e:
        logger.error(f"Error creating product from OpenFoodFacts data: {str(e)}")
        return {"error": f"Error processing product data: {str(e)}", "source": "error"}
