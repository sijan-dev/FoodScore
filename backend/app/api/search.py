from fastapi import APIRouter, Depends, Query
from sqlalchemy.orm import Session
from sqlalchemy import text
from app.database import get_db
from app.services.openfoodfacts import cdn_image_url

router = APIRouter(prefix="/search", tags=["Search"])

@router.get("/")
def search_products(
    q: str = Query(..., min_length=1, description="Search by product name, brand or category"),
    limit: int = Query(20, ge=1, le=50),
    db: Session = Depends(get_db)
):
    rows = db.execute(text("""
        SELECT product_id, name, brand, category, health_score, is_harmful,
               image_url, barcode,
               GREATEST(
                   similarity(name, :q),
                   similarity(COALESCE(brand, ''), :q)
               ) AS relevance
        FROM products
        WHERE name ILIKE :query
           OR brand ILIKE :query
           OR category ILIKE :query
        ORDER BY relevance DESC, health_score DESC
        LIMIT :limit
    """), {"query": f"%{q}%", "q": q, "limit": limit}).fetchall()

    return [
        {
            "product_id": r[0],
            "name": r[1],
            "brand": r[2],
            "category": r[3],
            "health_score": r[4],
            "is_harmful": r[5],
            "image_url": r[6] or cdn_image_url(r[7]),
            "barcode": r[7]
        }
        for r in rows
    ]