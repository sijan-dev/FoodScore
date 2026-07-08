from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
from urllib.parse import urlparse, urlencode, parse_qs, urlunparse
from app.config import DATABASE_URL

if not DATABASE_URL:
    raise RuntimeError("DATABASE_URL is not set in .env")

# Add sslmode=require for cloud databases (Neon) if not already present
parsed = urlparse(DATABASE_URL)
query = parse_qs(parsed.query)
if "sslmode" not in query:
    query["sslmode"] = ["require"]
    parsed = parsed._replace(query=urlencode(query, doseq=True))
    DATABASE_URL = urlunparse(parsed)

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()