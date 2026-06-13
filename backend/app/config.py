import os
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL = os.getenv("DATABASE_URL")
SECRET_KEY = os.getenv("SECRET_KEY")
if not SECRET_KEY:
    raise RuntimeError("SECRET_KEY must be set in environment")
GOOGLE_CLIENT_ID = os.getenv("GOOGLE_CLIENT_ID", "")
