-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Products table
CREATE TABLE IF NOT EXISTS products (
    product_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(200) NOT NULL,
    brand VARCHAR(100),
    category VARCHAR(50),
    barcode VARCHAR(50) UNIQUE NOT NULL,
    image_url TEXT,
    ingredients_raw TEXT,
    additives JSONB DEFAULT '[]'::jsonb,
    nutriments JSONB DEFAULT '{}'::jsonb,
    nova_group INTEGER CHECK (nova_group >= 1 AND nova_group <= 4),
    nutri_score CHAR(1) CHECK (nutri_score IN ('A', 'B', 'C', 'D', 'E')),
    health_score INTEGER DEFAULT NULL CHECK (health_score >= 0 AND health_score <= 100),
    is_harmful BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes separately
CREATE INDEX IF NOT EXISTS idx_products_barcode ON products(barcode);
CREATE INDEX IF NOT EXISTS idx_products_name ON products(name);
CREATE INDEX IF NOT EXISTS idx_products_brand ON products(brand);
CREATE INDEX IF NOT EXISTS idx_products_health_score ON products(health_score);
CREATE INDEX IF NOT EXISTS idx_products_additives ON products USING GIN (additives);

-- Additive reference table
CREATE TABLE IF NOT EXISTS additive_reference (
    e_number VARCHAR(10) PRIMARY KEY,
    common_name VARCHAR(200),
    risk_tier VARCHAR(20) CHECK (risk_tier IN ('harmful', 'high', 'medium', 'low')),
    risk_description TEXT,
    is_banned BOOLEAN DEFAULT FALSE
);

-- Flagged ingredients table
CREATE TABLE IF NOT EXISTS flagged_ingredients (
    id SERIAL PRIMARY KEY,
    product_id UUID REFERENCES products(product_id) ON DELETE CASCADE,
    ingredient_name VARCHAR(200),
    e_number VARCHAR(10) REFERENCES additive_reference(e_number) ON DELETE SET NULL,
    risk_tier VARCHAR(20),
    penalty INTEGER
);

-- Suggestions table
CREATE TABLE IF NOT EXISTS suggestions (
    suggestion_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    product_id UUID REFERENCES products(product_id) ON DELETE CASCADE,
    generated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    flagged_items JSONB,
    suggestion_text TEXT,
    alternatives JSONB
);

-- Users table
CREATE TABLE IF NOT EXISTS users (
    user_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    username VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    password_hash VARCHAR(255),
    google_id VARCHAR(255) UNIQUE,
    display_name VARCHAR(100),
    avatar_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

-- Scan history table
CREATE TABLE IF NOT EXISTS scan_history (
    scan_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES users(user_id) ON DELETE CASCADE,
    product_id UUID REFERENCES products(product_id),
    barcode VARCHAR(50),
    scanned_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    score_at_scan INTEGER,
    CHECK ((product_id IS NOT NULL AND barcode IS NULL) OR (product_id IS NULL AND barcode IS NOT NULL))
);

-- User settings table
CREATE TABLE IF NOT EXISTS user_settings (
    id SERIAL PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    setting_key VARCHAR(100) NOT NULL,
    setting_value TEXT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, setting_key)
);

-- Indexes for performance
CREATE INDEX IF NOT EXISTS idx_users_google_id ON users(google_id);
CREATE INDEX IF NOT EXISTS idx_scan_history_user_id ON scan_history(user_id);
CREATE INDEX IF NOT EXISTS idx_scan_history_scanned_at ON scan_history(scanned_at);
CREATE INDEX IF NOT EXISTS idx_products_healthy ON products(health_score) WHERE health_score >= 70;

-- Auto-update timestamp function
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
-- for search optimization--
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE INDEX IF NOT EXISTS idx_products_name_trgm ON products USING GIN (name gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_products_brand_trgm ON products USING GIN (brand gin_trgm_ops);

-- Triggers (drop first to make idempotent)
DROP TRIGGER IF EXISTS update_products_updated_at ON products;
CREATE TRIGGER update_products_updated_at
    BEFORE UPDATE ON products
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_users_updated_at ON users;
CREATE TRIGGER update_users_updated_at
    BEFORE UPDATE ON users
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_user_settings_updated_at ON user_settings;
CREATE TRIGGER update_user_settings_updated_at
    BEFORE UPDATE ON user_settings
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Email validation constraint (idempotent)
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_constraint
        WHERE conname = 'valid_email'
        AND conrelid = 'users'::regclass
    ) THEN
        ALTER TABLE users ADD CONSTRAINT valid_email
        CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');
    END IF;
END $$;

-- FoodScore Additive Reference - Nepal/South Asia focused (100 entries)
INSERT INTO additive_reference (e_number, common_name, risk_tier, is_banned) VALUES

-- HARMFUL / BANNED (found in processed meats, some imports)
('E123', 'Amaranth Red', 'harmful', true),
('E121', 'Citrus Red 2', 'harmful', true),
('E103', 'Alkanet', 'harmful', true),
('E105', 'Fast Yellow AB', 'harmful', true),
('E111', 'Orange GGN', 'harmful', true),
('E125', 'Scarlet GN', 'harmful', true),
('E126', 'Ponceau 6R', 'harmful', true),
('E130', 'Indanthrene Blue', 'harmful', true),
('E152', 'Black 7984', 'harmful', true),
('E249', 'Potassium Nitrite', 'harmful', true),
('E250', 'Sodium Nitrite', 'harmful', true),
('E251', 'Sodium Nitrate', 'harmful', true),
('E252', 'Potassium Nitrate', 'harmful', true),

-- HIGH RISK (commonly found in Nepali packaged foods)
-- Colors in chips, noodles, biscuits, soft drinks
('E102', 'Tartrazine', 'high', false),
('E104', 'Quinoline Yellow', 'high', false),
('E107', 'Yellow 2G', 'high', false),
('E110', 'Sunset Yellow FCF', 'high', false),
('E122', 'Carmoisine', 'high', false),
('E124', 'Ponceau 4R', 'high', false),
('E127', 'Erythrosine', 'high', false),
('E129', 'Allura Red AC', 'high', false),
('E131', 'Patent Blue V', 'high', false),
('E132', 'Indigotine', 'high', false),
('E133', 'Brilliant Blue FCF', 'high', false),
('E142', 'Green S', 'high', false),
('E151', 'Brilliant Black BN', 'high', false),
('E155', 'Brown HT', 'high', false),
-- Preservatives in juices, jams, sauces common in Nepal
('E210', 'Benzoic Acid', 'high', false),
('E211', 'Sodium Benzoate', 'high', false),
('E212', 'Potassium Benzoate', 'high', false),
('E213', 'Calcium Benzoate', 'high', false),
-- Sulfites in dried fruits, pickles
('E220', 'Sulfur Dioxide', 'high', false),
('E221', 'Sodium Sulfite', 'high', false),
('E222', 'Sodium Bisulfite', 'high', false),
('E223', 'Sodium Metabisulfite', 'high', false),
('E224', 'Potassium Metabisulfite', 'high', false),
-- Antioxidants in oils, chips
('E310', 'Propyl Gallate', 'high', false),
('E311', 'Octyl Gallate', 'high', false),
('E312', 'Dodecyl Gallate', 'high', false),
('E320', 'BHA Butylated Hydroxyanisole', 'high', false),
('E321', 'BHT Butylated Hydroxytoluene', 'high', false),
-- Flavor enhancers very common in Wai Wai, Rara, chips
('E621', 'Monosodium Glutamate', 'high', false),
('E622', 'Monopotassium Glutamate', 'high', false),
('E623', 'Calcium Diglutamate', 'high', false),
('E625', 'Magnesium Diglutamate', 'high', false),
-- Artificial sweeteners
('E951', 'Aspartame', 'high', false),
('E952', 'Cyclamic Acid', 'high', false),
('E954', 'Saccharin', 'high', false),
-- Thickener linked to gut issues
('E407', 'Carrageenan', 'high', false),
('E407A', 'Processed Eucheuma Seaweed', 'high', false),
-- Titanium dioxide (banned in EU, still used in South Asia)
('E171', 'Titanium Dioxide', 'high', false),

-- MEDIUM RISK (common in South Asian processed foods)
-- Caramel colors in cola, sauces, biscuits
('E150A', 'Plain Caramel', 'medium', false),
('E150B', 'Caustic Sulfite Caramel', 'medium', false),
('E150C', 'Ammonia Caramel', 'medium', false),
('E150D', 'Sulfite Ammonia Caramel', 'medium', false),
-- Colors in dairy, confectionery
('E160B', 'Annatto Bixin', 'medium', false),
('E161B', 'Lutein', 'medium', false),
-- Preservatives in bread, dairy
('E280', 'Propionic Acid', 'medium', false),
('E281', 'Sodium Propionate', 'medium', false),
('E282', 'Calcium Propionate', 'medium', false),
('E283', 'Potassium Propionate', 'medium', false),
-- Phosphoric acid in cola drinks
('E338', 'Phosphoric Acid', 'medium', false),
('E339', 'Sodium Phosphates', 'medium', false),
('E340', 'Potassium Phosphates', 'medium', false),
('E341', 'Calcium Phosphates', 'medium', false),
-- Phosphates in processed cheese, instant noodles
('E450', 'Diphosphates', 'medium', false),
('E451', 'Triphosphates', 'medium', false),
('E452', 'Polyphosphates', 'medium', false),
-- Flavor enhancers in chips, noodles
('E627', 'Disodium Guanylate', 'medium', false),
('E631', 'Disodium Inosinate', 'medium', false),
('E635', 'Disodium Ribonucleotides', 'medium', false),
-- Sweeteners in diet drinks
('E950', 'Acesulfame K', 'medium', false),
('E955', 'Sucralose', 'medium', false),
('E960', 'Steviol Glycosides', 'medium', false),
('E965', 'Maltitol', 'medium', false),
('E966', 'Lactitol', 'medium', false),
-- Iron oxides used in some spice products
('E172', 'Iron Oxides and Hydroxides', 'medium', false),

-- LOW RISK (safe additives very common in Nepal)
-- Natural colors
('E100', 'Curcumin Turmeric', 'low', false),
('E101', 'Riboflavin Vitamin B2', 'low', false),
('E140', 'Chlorophylls', 'low', false),
('E160A', 'Beta-Carotene', 'low', false),
('E160C', 'Paprika Extract', 'low', false),
('E160D', 'Lycopene', 'low', false),
('E162', 'Beetroot Red', 'low', false),
('E163', 'Anthocyanins', 'low', false),
-- Preservatives - safe
('E200', 'Sorbic Acid', 'low', false),
('E202', 'Potassium Sorbate', 'low', false),
('E203', 'Calcium Sorbate', 'low', false),
-- Acidity regulators common in pickles, jams
('E260', 'Acetic Acid', 'low', false),
('E261', 'Potassium Acetate', 'low', false),
('E262', 'Sodium Acetates', 'low', false),
('E270', 'Lactic Acid', 'low', false),
('E296', 'Malic Acid', 'low', false),
-- Vitamin C used in juices
('E300', 'Ascorbic Acid Vitamin C', 'low', false),
('E301', 'Sodium Ascorbate', 'low', false),
('E302', 'Calcium Ascorbate', 'low', false),
-- Vitamin E in oils
('E306', 'Tocopherol Vitamin E', 'low', false),
('E307', 'Alpha-Tocopherol', 'low', false),
-- Emulsifiers in biscuits, chocolate, bread
('E322', 'Lecithins', 'low', false),
('E471', 'Mono and Diglycerides of Fatty Acids', 'low', false),
('E472E', 'Mono and Diacetyl Tartaric Acid Esters', 'low', false),
('E476', 'Polyglycerol Polyricinoleate', 'low', false),
('E481', 'Sodium Stearoyl Lactylate', 'low', false),
('E482', 'Calcium Stearoyl Lactylate', 'low', false),
-- Acidity in juices, soft drinks
('E330', 'Citric Acid', 'low', false),
('E331', 'Sodium Citrates', 'low', false),
('E332', 'Potassium Citrates', 'low', false),
('E333', 'Calcium Citrates', 'low', false),
('E334', 'Tartaric Acid', 'low', false),
('E335', 'Sodium Tartrates', 'low', false),
-- Thickeners/stabilizers in dairy, sauces
('E400', 'Alginic Acid', 'low', false),
('E401', 'Sodium Alginate', 'low', false),
('E406', 'Agar', 'low', false),
('E410', 'Locust Bean Gum', 'low', false),
('E412', 'Guar Gum', 'low', false),
('E415', 'Xanthan Gum', 'low', false),
('E440', 'Pectins', 'low', false),
('E460', 'Cellulose', 'low', false),
('E466', 'Carboxymethyl Cellulose', 'low', false),
-- Humectants
('E420', 'Sorbitol', 'low', false),
('E421', 'Mannitol', 'low', false),
('E422', 'Glycerol', 'low', false),
-- Raising agents in biscuits, bread
('E500', 'Sodium Carbonates', 'low', false),
('E501', 'Potassium Carbonates', 'low', false),
('E503', 'Ammonium Carbonates', 'low', false),
('E504', 'Magnesium Carbonates', 'low', false),
('E508', 'Potassium Chloride', 'low', false),
('E509', 'Calcium Chloride', 'low', false),
('E516', 'Calcium Sulfate', 'low', false),
-- Anti-caking in salt, spices
('E551', 'Silicon Dioxide', 'low', false),
('E552', 'Calcium Silicate', 'low', false),
('E553B', 'Talc', 'low', false),
('E554', 'Sodium Aluminosilicate', 'low', false),
-- Modified starches very common in instant noodles, sauces
('E1400', 'Dextrin', 'low', false),
('E1404', 'Oxidised Starch', 'low', false),
('E1410', 'Monostarch Phosphate', 'low', false),
('E1412', 'Distarch Phosphate', 'low', false),
('E1414', 'Acetylated Distarch Phosphate', 'low', false),
('E1420', 'Acetylated Starch', 'low', false),
('E1422', 'Acetylated Distarch Adipate', 'low', false),
('E1442', 'Hydroxy Propyl Distarch Phosphate', 'low', false),
('E1450', 'Starch Sodium Octenyl Succinate', 'low', false),
-- Glazing agents
('E901', 'Beeswax', 'low', false),
('E903', 'Carnauba Wax', 'low', false),
('E904', 'Shellac', 'low', false),
-- Flavor enhancer natural
('E640', 'Glycine', 'low', false),
('E575', 'Glucono Delta-Lactone', 'low', false)

ON CONFLICT (e_number) DO NOTHING;
