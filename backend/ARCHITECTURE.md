# FoodScore Backend Architecture

## Overview

FastAPI-based backend that scores food products by scanning barcodes via OpenFoodFacts, computes health scores using WHO-aligned thresholds + additive penalties + ML-predicted Nutri-Score, and serves KNN-based similar/healthier alternative recommendations.

---

## Directory Structure

```
backend/
├── Dockerfile                          # Production container build
├── requirements.txt                    # All dependencies
├── requirements-production.txt         # Production-only dependencies
├── .env                                # Environment variables (gitignored)
└── app/
    ├── config.py                       # Env var loading (DATABASE_URL, SECRET_KEY, GOOGLE_CLIENT_ID)
    ├── database.py                     # SQLAlchemy engine, session, get_db() dependency, SSL logic
    ├── main.py                         # FastAPI app, CORS, middleware, router registration, /health
    ├── rate_limiter.py                 # In-memory per-IP sliding window rate limiter (auth endpoints)
    ├── api/                            # Route handlers
    │   ├── auth.py                     # Google OAuth, email/password register/login, refresh, /me
    │   ├── deps.py                     # JWT auth dependency (get_current_user)
    │   ├── products.py                 # Product CRUD, barcode scan, alternatives, nutrient summary
    │   ├── scan.py                     # Scan history save/retrieve (auth-protected)
    │   ├── score.py                    # Manually trigger re-score for a product
    │   └── search.py                   # Full-text search with pg_trgm similarity ranking
    ├── models/                         # SQLAlchemy ORM models
    │   ├── product.py                  # products table (UUID PK, JSONB nutriments/additives)
    │   ├── nutrition.py                # nutrition_facts table (legacy — not actively used)
    │   ├── score.py                    # health_scores table (legacy — not actively used)
    │   └── user.py                     # users table (UUID PK, google_id, password_hash)
    ├── schemas/                        # Pydantic request/response validation
    │   ├── auth.py                     # GoogleAuthRequest, TokenResponse, UserOut, RegisterRequest
    │   ├── product.py                  # ProductCreate (name validation, NOVA range 1-4, Nutri-Score A-E)
    │   └── score.py                    # ScoreOut, TrafficLight
    ├── services/                       # Business logic layer
    │   ├── auth_service.py             # JWT create/decode, bcrypt hashing, Google OAuth, user CRUD
    │   ├── openfoodfacts.py            # OFF API fetch, barcode scan flow, image URL rewrite
    │   ├── product_service.py          # Product insert/get/list with JSONB handling
    │   ├── recommendations_service.py  # KNN alternatives (similar + healthier), score-based recommendations
    │   ├── scan_history_service.py     # Scan history persistence
    │   └── score_service.py            # Health score engine: additive penalties, nutriment rules, NOVA, Nutri-Score
    └── ml/                             # Machine learning
        ├── recommender.py              # KNN via sklearn NearestNeighbors, feature matrix from nutriments
        ├── scorer.py                   # predict_nutriscore() — loads model, extracts features
        ├── loader.py                   # Singleton model loader (joblib, cached)
        ├── preprocessor.py             # Feature extraction + clamping for ML model
        ├── train.py                    # RandomForest training script (OFF dataset → .pkl)
        └── nutriscore_model.pkl        # Pre-trained RandomForest (A–E Nutri-Score prediction)
```

---

## Core Data Flow

```
User scans barcode
       │
       ▼
GET /products/scan/{barcode}
       │
       ├── check local DB by barcode ──► found? ──► return product + score
       │
       └── not found?
              │
              ▼
       fetch_from_openfoodfacts(barcode)
              │
              ├── GET https://world.openfoodfacts.org/api/v2/product/{barcode}.json
              ├── extract: name, brand, category, image_url, ingredients, additives,
              │            nutriments (sugars, saturated_fat, salt, fiber, proteins),
              │            nova_group, nutri_score
              │
              ▼
       create_product(data, db)  ← INSERT into products table
              │
              ▼
       compute_score(product_id, db)
              │
              ├── 1. Check additives against additive_reference table
              │       └── harmful tier? → score = 0, is_harmful = true
              │       └── else → subtract tier penalty (100/15/7/2)
              │
              ├── 2. Check nutriments against WHO thresholds
              │       sugars_100g:    ≥15 → -5,  ≥5 → -2
              │       saturated_fat:  ≥4  → -5, ≥1.5 → -2
              │       salt_100g:      ≥1.0 → -5, ≥0.3 → -2
              │       fiber_100g:     ≥6  → +5,  ≥3 → +2  (bonus)
              │       proteins_100g:  ≥10 → +3,  ≥5 → +1  (bonus)
              │
              ├── 3. NOVA group modifier
              │       NOVA 1 → +5,  NOVA 2 → 0,  NOVA 3 → -5,  NOVA 4 → -15
              │
              ├── 4. Nutri-Score modifier
              │       A → +5,  B → +3,  C → 0,  D → -5,  E → -10
              │       (if missing, predict via ML RandomForest model)
              │
              ├── 5. Clamp score to 0–100
              │
              └── 6. Save: health_score, is_harmful, flagged_ingredients, suggestion
                         traffic_light (green/yellow/orange/red based on score)
              │
              ▼
       db.commit()  ← single commit for both creation and scoring
              │
              ▼
       Return product detail to Flutter app
```

---

## Key API Endpoints

| Method | Path | Description |
|--------|------|-------------|
| GET | `/health` | DB connectivity + service status |
| GET | `/products/?limit=&skip=` | List products (paginated) with image_url + barcode |
| GET | `/products/{id}` | Full product detail (nutriments, additives, score, traffic light) |
| GET | `/products/scan/{barcode}` | **Main flow**: local DB check → OFF fetch → create → score → return |
| GET | `/products/{id}/alternatives` | **KNN alternatives**: similar (same category, any score) + healthier (higher score) |
| GET | `/products/{id}/nutrients` | Structured nutrient breakdown with levels (low/medium/high) and advice |
| GET | `/products/recommendations` | Top products with health_score ≥ 70 |
| POST | `/products/` | Manually create a product (auto-scored) |
| POST | `/score/{id}` | Re-score an existing product |
| GET | `/search/?q=` | Full-text search with pg_trgm similarity + relevance ranking |
| POST | `/auth/google` | Google OAuth login |
| POST | `/auth/register` | Email/password registration |
| POST | `/auth/login` | Email/password login |
| POST | `/auth/refresh` | Refresh access token |
| GET | `/auth/me` | Current user profile (auth-protected) |
| POST | `/scan/history` | Save scan record (auth-protected) |
| GET | `/scan/history` | Get user's scan history (auth-protected) |
| GET | `/scan/recent` | Get recent public scans |

---

## Database Schema (Key Tables)

### `products`
| Column | Type | Notes |
|--------|------|-------|
| `product_id` | UUID (PK) | Auto-generated |
| `barcode` | VARCHAR(50) | Unique, nullable — OFF barcode |
| `name` | VARCHAR | Required |
| `brand` | VARCHAR | |
| `category` | VARCHAR | e.g. "Beverages", "Dairy", "Snacks" |
| `image_url` | VARCHAR | `world.openfoodfacts.org/...` |
| `ingredients_raw` | TEXT | Raw ingredients string from OFF |
| `additives` | JSONB | List of additive codes (e.g. `["E330", "E500"]`) |
| `nutriments` | JSONB | `{"sugars_100g": 5, "saturated_fat_100g": 2, ...}` |
| `nova_group` | INTEGER | 1–4 (minimally processed → ultra-processed) |
| `nutri_score` | VARCHAR(1) | A–E |
| `health_score` | INTEGER | 0–100 (computed) |
| `is_harmful` | BOOLEAN | True if any banned/harmful additive found |
| `created_at` | TIMESTAMPTZ | |
| `updated_at` | TIMESTAMPTZ | |

### `additive_reference`
| Column | Type | Notes |
|--------|------|-------|
| `e_number` | VARCHAR | e.g. "E330" |
| `common_name` | VARCHAR | e.g. "Citric Acid" |
| `risk_tier` | VARCHAR | `harmful`, `high`, `medium`, `low` |
| `is_banned` | BOOLEAN | |

### `flagged_ingredients`
Per-product additive flags computed during scoring.

### `suggestions`
Per-product health suggestion text (e.g. "This product has a good nutritional profile").

### `users`
| Column | Type | Notes |
|--------|------|-------|
| `user_id` | UUID (PK) | |
| `username` | VARCHAR | Unique |
| `email` | VARCHAR | Unique |
| `password_hash` | VARCHAR | Nullable (Google OAuth users may not have one) |
| `google_id` | VARCHAR | Unique, nullable |
| `display_name` | VARCHAR | |
| `avatar_url` | VARCHAR | |

---

## ML / Scoring Details

### Health Score Algorithm (`score_service.py`)
1. **Start**: base = 100
2. **Additive penalties**: query `additive_reference` by e_number → subtract tier penalty
   - harmful/banned → score = 0, is_harmful = true (early exit)
   - high → -15, medium → -7, low → -2
3. **Nutriment rules**: compare values against WHO-aligned thresholds
   - Negative nutrients (sugar, saturated fat, salt): exceed high threshold → full penalty, exceed medium → half penalty
   - Positive nutrients (fiber, protein): exceed target → bonus
4. **NOVA modifier**: ultra-processed (4) → -15, whole-food (1) → +5
5. **Nutri-Score modifier**: uses OFF value if available, otherwise predicts via ML
   - ML model: RandomForestClassifier trained on 500k OFF products
   - Features: `sugars_100g`, `saturated-fat_100g`, `salt_100g`, `fiber_100g`, `proteins_100g`
6. **Clamp**: max(0, min(100, score))

### KNN Recommendations (`recommender.py`)
- **Algorithm**: sklearn NearestNeighbors with euclidean distance
- **Feature vector**: `[sugars_100g, saturated_fat_100g, salt_100g, fiber_100g, proteins_100g]`
- **Filter**: same category only, must have nutriments + health_score
- **Returns**: `top_n` similar (any score) + `top_n` healthier (strictly higher score)
- **Fallback**: if `< 2` products in category, returns empty (no cross-category fallback currently)

### Image URL Handling
- OFF API returns images at `images.openfoodfacts.org` (blocked on some networks)
- **Rewrite**: all image URLs use `world.openfoodfacts.org` instead
- `cdn_image_url(barcode)` → constructs `world.openfoodfacts.org/images/products/{p1}/{p2}/{p3}/front.en.400.jpg`
- `rewrite_image_url(url)` → replaces any `images.openfoodfacts.org` / `static.openfoodfacts.org` prefix
- Existing DB records were migrated via `UPDATE ... REPLACE(image_url, ...)`

---

## Key Environment Variables

| Variable | Required | Description |
|----------|----------|-------------|
| `DATABASE_URL` | Yes | PostgreSQL connection string (Neon in prod, local postgres for Docker) |
| `SECRET_KEY` | Yes | JWT signing key |
| `GOOGLE_CLIENT_ID` | No | Google OAuth client ID |
| `CORS_ORIGINS` | No | Comma-separated allowed origins (default: `http://localhost:3000`) |

### Docker-Specific
- Root `.env` provides `DATABASE_URL` → overrides `docker-compose.yml`'s local postgres URL when set
- `docker-compose.yml` no longer has inline `DATABASE_URL` — clean separation of config from code
- Conditional SSL in `database.py`: `sslmode=require` auto-applied only for non-local hosts

---

## Common Issues & Fixes

| Symptom | Cause | Fix |
|---------|-------|-----|
| Alternatives return empty | UUID vs text mismatch in `ANY(:ids)` | Cast: `product_id::text = ANY(:ids)` |
| SSL error in Docker | `sslmode=require` on local postgres | `database.py` skips SSL for localhost |
| Images show avatar | `images.openfoodfacts.org` blocked on network | Rewrite to `world.openfoodfacts.org` |
| Saturated fat always 0 | OFF field `saturated-fat_100g` vs `saturated_fat_100g` | `field.replace('_', '-', 1)` fallback |
| Additive penalties never apply | `en:` locale prefix in additive tags | Strip prefix + uppercase before matching |
| NOVA group 0 violates CHECK | `or 0` fallback in NULL handling | Changed to `or None` (null passes CHECK) |
| Scan endpoint no barcode field | Response dict missing `barcode` | Added to scan endpoint return |
| List endpoint no image_url | Query didn't SELECT `image_url`, `barcode` | Added to query + response |
