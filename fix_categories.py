import os
from dotenv import load_dotenv
from sqlalchemy import create_engine, text

load_dotenv('backend/.env')
DATABASE_URL = os.getenv('DATABASE_URL')

engine = create_engine(DATABASE_URL)

updates = [
    "UPDATE products SET category = 'Noodles' WHERE category ILIKE '%noodle%' OR category ILIKE '%pasta%'",
    "UPDATE products SET category = 'Beverages' WHERE category ILIKE '%beverage%' OR category ILIKE '%drink%' OR category ILIKE '%juice%'",
    "UPDATE products SET category = 'Snacks' WHERE category ILIKE '%snack%' OR category ILIKE '%chip%' OR category ILIKE '%crisp%'",
    "UPDATE products SET category = 'Dairy' WHERE category ILIKE '%dairy%' OR category ILIKE '%milk%' OR category ILIKE '%cheese%' OR category ILIKE '%yogurt%'",
    "UPDATE products SET category = 'Biscuits' WHERE category ILIKE '%biscuit%' OR category ILIKE '%cookie%'",
    "UPDATE products SET category = 'Chocolate' WHERE category ILIKE '%chocolate%' OR category ILIKE '%choco%'",
]

with engine.connect() as conn:
    for sql in updates:
        result = conn.execute(text(sql))
        print(f"Updated {result.rowcount} rows: {sql[:60]}")
    conn.commit()
    print("Done.")
