import os
import asyncio
import httpx
from dotenv import load_dotenv
from sqlalchemy import create_engine, text

load_dotenv('backend/.env')
DATABASE_URL = os.getenv('DATABASE_URL')
engine = create_engine(DATABASE_URL)

def build_off_cdn_url(barcode: str) -> str:
    b = barcode.strip().zfill(13)
    if len(b) >= 13:
        return (f"https://images.openfoodfacts.org/images/products"
                f"/{b[0:3]}/{b[3:6]}/{b[6:9]}/{b[9:]}/front_en.display.400.jpg")
    return f"https://images.openfoodfacts.org/images/products/{b}/front_en.display.400.jpg"

async def check_image_exists(client: httpx.AsyncClient, url: str) -> bool:
    try:
        r = await client.head(url, timeout=5.0, follow_redirects=True)
        return r.status_code == 200
    except Exception:
        return False

async def main():
    with engine.connect() as conn:
        rows = conn.execute(text("""
            SELECT product_id, barcode FROM products 
            WHERE image_url IS NULL AND barcode IS NOT NULL AND barcode != ''
        """)).fetchall()
    
    print(f"Found {len(rows)} products with missing images")
    
    updated = 0
    async with httpx.AsyncClient() as client:
        for product_id, barcode in rows:
            url = build_off_cdn_url(barcode)
            exists = await check_image_exists(client, url)
            if exists:
                with engine.connect() as conn:
                    conn.execute(text("""
                        UPDATE products SET image_url = :url 
                        WHERE product_id = :pid
                    """), {"url": url, "pid": str(product_id)})
                    conn.commit()
                updated += 1
                print(f"✅ {barcode} → image saved")
            else:
                print(f"❌ {barcode} → no image on OFF CDN")
    
    print(f"\nDone. Updated {updated}/{len(rows)} products with images.")

asyncio.run(main())
