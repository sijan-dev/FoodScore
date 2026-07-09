from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from app.database import get_db
from sqlalchemy import text
from app.schemas.product import ProductCreate
from app.services import product_service, score_service
from app.services.openfoodfacts import scan_barcode, cdn_image_url
from app.services.recommendations_service import get_recommendations, get_better_alternatives
router = APIRouter(prefix="/products", tags=["Products"])

@router.post("/")
def add_product(product: ProductCreate, db: Session = Depends(get_db)):
    product_id = product_service.create_product(product.model_dump(), db)
    result = score_service.compute_score(product_id, db)
    return {"product_id": product_id, **result}

@router.get("/")
def list_products(
    skip: int = Query(0, ge=0),
    limit: int = Query(20, ge=1, le=100),
    db: Session = Depends(get_db)
):
    rows = product_service.list_products(db, skip, limit)
    return [
        {"product_id": r[0], "name": r[1], "brand": r[2],
         "health_score": r[3], "is_harmful": r[4]}
        for r in rows
    ]

# IMPORTANT: Specific routes BEFORE the {product_id} wildcard
@router.get("/recommendations")
def get_recommendations_endpoint(limit: int = 5, db: Session = Depends(get_db)):
    return get_recommendations(None, limit, db)

@router.get("/scan/{barcode}")
async def scan_barcode_endpoint(barcode: str, db: Session = Depends(get_db)):
    """Scan a product by barcode - checks local DB first, then OpenFoodFacts"""
    from app.services.openfoodfacts import scan_barcode

    try:
        result = await scan_barcode(barcode, db)
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error scanning barcode: {str(e)}")

    if "error" in result:
        raise HTTPException(status_code=404, detail=result["error"])

    product_id = result.get("product_id")
    if not product_id:
        return result

    row = product_service.get_product(product_id, db)
    if not row:
        return result

    img = row[4] or cdn_image_url(barcode)
    return {
        "source": result.get("source"),
        "product_id": row[0], "name": row[1], "brand": row[2],
        "category": row[3], "image_url": img,
        "health_score": row[5], "is_harmful": row[6],
        "nova_group": row[7], "nutri_score": row[8], "nutriments": row[9],
        "additives": row[10], "suggestion": row[11],
        "flagged_ingredients": row[12],
        "traffic_light": score_service.get_traffic_light(row[5] or 0, row[6] or False)
    }

@router.get("/{product_id}/alternatives")
def get_alternatives_endpoint(product_id: str, db: Session = Depends(get_db)):
    return get_better_alternatives(product_id, db)

# Wildcard route must be LAST
@router.get("/{product_id}")
def get_product(product_id: str, db: Session = Depends(get_db)):
    row = product_service.get_product(product_id, db)
    if not row:
        raise HTTPException(status_code=404, detail="Product not found")
    bc = db.execute(text("SELECT barcode FROM products WHERE product_id = :pid"), {"pid": product_id}).scalar()
    img = row[4] or cdn_image_url(bc)
    return {
        "product_id": row[0], "name": row[1], "brand": row[2],
        "category": row[3], "image_url": img,
        "health_score": row[5], "is_harmful": row[6],
        "nova_group": row[7], "nutri_score": row[8], "nutriments": row[9],
        "additives": row[10], "suggestion": row[11],
        "flagged_ingredients": row[12],
        "traffic_light": score_service.get_traffic_light(row[5] or 0, row[6] or False)
    }

@router.get("/{product_id}/nutrients")
def get_nutrient_summary(product_id: str, db: Session = Depends(get_db)):
    row = db.execute(text("""
        SELECT nutriments FROM products WHERE product_id = :pid
    """), {"pid": product_id}).fetchone()
    
    if not row or not row.nutriments:
        raise HTTPException(status_code=404, detail="Product or nutriments not found")
    
    nut = row.nutriments
    
    def level(value, low, high):
        if value <= low:
            return "low"
        elif value <= high:
            return "medium"
        return "high"
    
    def advice(nutrient, lvl):
        messages = {
            "sugar":    {"low": "Low sugar — great choice", "medium": "Moderate sugar — watch intake", "high": "High sugar — limit consumption"},
            "fat":      {"low": "Low saturated fat — heart friendly", "medium": "Moderate saturated fat", "high": "High saturated fat — consume sparingly"},
            "salt":     {"low": "Low salt — good for blood pressure", "medium": "Moderate salt content", "high": "High salt — watch your intake"},
            "fiber":    {"low": "Low fiber — pair with whole foods", "medium": "Decent fiber content", "high": "High fiber — great for digestion"},
            "protein":  {"low": "Low protein content", "medium": "Good protein source", "high": "High protein — excellent"},
        }
        return messages[nutrient][lvl]
    
    sugar = nut.get("sugars_100g") or 0
    fat   = nut.get("saturated_fat_100g") or 0
    salt  = nut.get("salt_100g") or 0
    fiber = nut.get("fiber_100g") or 0
    protein = nut.get("proteins_100g") or 0
    
    return {
        "product_id": product_id,
        "nutrients": [
            {"name": "Sugar",          "value": sugar,   "unit": "g", "level": level(sugar,   5,  20),  "advice": advice("sugar",   level(sugar,   5,  20)),  "positive": sugar   <= 5},
            {"name": "Saturated Fat",  "value": fat,     "unit": "g", "level": level(fat,     2,   5),  "advice": advice("fat",     level(fat,     2,   5)),  "positive": fat     <= 2},
            {"name": "Salt",           "value": salt,    "unit": "g", "level": level(salt,  0.6, 1.5),  "advice": advice("salt",    level(salt,  0.6, 1.5)),  "positive": salt    <= 0.6},
            {"name": "Fiber",          "value": fiber,   "unit": "g", "level": level(fiber,   3,   6),  "advice": advice("fiber",   level(fiber,   3,   6)),  "positive": fiber   >= 3},
            {"name": "Protein",        "value": protein, "unit": "g", "level": level(protein, 5,  10),  "advice": advice("protein", level(protein, 5,  10)),  "positive": protein >= 5},
        ]
    }