import logging
from sqlalchemy.orm import Session
from sqlalchemy import text
from typing import List, Dict, Any, Optional
from app.ml.recommender import find_similar_healthier
from app.services.openfoodfacts import cdn_image_url

logger = logging.getLogger(__name__)

def get_recommendations(user_id: Optional[str] = None, limit: int = 5, db: Session = None) -> List[Dict[str, Any]]:
    """Get product recommendations"""
    if db is None:
        return []
    
    try:
        rows = db.execute(text("""
            SELECT product_id, name, brand, health_score, is_harmful, image_url, barcode
            FROM products
            WHERE health_score >= 70 AND is_harmful = FALSE
            ORDER BY health_score DESC
            LIMIT :limit
        """), {"limit": limit}).fetchall()
    except Exception as e:
        logger.error("Error getting recommendations: %s", e)
        return []
    
    return [
        {
            "product_id": r[0],
            "name": r[1],
            "brand": r[2],
            "health_score": r[3],
            "is_harmful": r[4],
            "image_url": r[5] or cdn_image_url(r[6]),
            "barcode": r[6],
            "reason": "High nutritional quality" if r[3] >= 80 else "Good nutritional value"
        }
        for r in rows
    ]

def get_better_alternatives(product_id: str, db: Session):
    """Find nutritionally similar and healthier alternatives using KNN"""
    try:
        results = find_similar_healthier(product_id, db, top_n=5)
        similar = results.get("similar", [])
        healthier = results.get("healthier", [])

        # Enrich with DB fields (batch query to avoid N+1)
        all_ids = list({r["product_id"] for r in similar + healthier})
        enriched = {}
        if all_ids:
            rows = db.execute(text("""
                SELECT product_id, image_url, category, barcode, is_harmful
                FROM products WHERE product_id::text = ANY(:ids)
            """), {"ids": [str(pid) for pid in all_ids]}).fetchall()
            for row in rows:
                enriched[str(row.product_id)] = {
                    "image_url": row.image_url or cdn_image_url(row.barcode),
                    "category": row.category,
                    "barcode": row.barcode,
                    "is_harmful": row.is_harmful
                }

        def enrich(item):
            pid = str(item["product_id"])
            extra = enriched.get(pid, {})
            item["improvement"] = f"{item['health_score']} health score"
            item.update(extra)
            return item

        return {
            "similar": [enrich(r) for r in similar],
            "healthier": [enrich(r) for r in healthier]
        }
    except Exception as e:
        logger.error("Error getting ML alternatives: %s", e)
        return {"similar": [], "healthier": []}