import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report
import joblib
import os

# Columns we need
COLS = [
    "sugars_100g",
    "saturated-fat_100g",
    "salt_100g",
    "fiber_100g",
    "proteins_100g",
    "nutriscore_grade"
]

FEATURE_COLS = [
    "sugars_100g",
    "saturated-fat_100g",
    "salt_100g",
    "fiber_100g",
    "proteins_100g",
]

print("Loading dataset...")
df = pd.read_csv(
    os.path.expanduser("~/Downloads/en.openfoodfacts.org.products.csv"),
    usecols=COLS,
    sep="\t",
    on_bad_lines="skip",
    nrows=500000  # load first 500k rows only
)

print(f"Loaded {len(df)} rows")

# Clean
df = df.dropna(subset=COLS)
df = df[df["nutriscore_grade"].isin(["a", "b", "c", "d", "e"])]
df["nutriscore_grade"] = df["nutriscore_grade"].str.upper()

# Remove outliers
for col in FEATURE_COLS:
    df = df[(df[col] >= 0) & (df[col] <= 100)]

print(f"Clean rows: {len(df)}")
print(df["nutriscore_grade"].value_counts())

X = df[FEATURE_COLS].values
y = df["nutriscore_grade"].values

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

print("Training model...")
model = RandomForestClassifier(n_estimators=50, max_depth=10, random_state=42, n_jobs=-1)
model.fit(X_train, y_train)

print("Evaluating...")
y_pred = model.predict(X_test)
print(classification_report(y_test, y_pred))

# Save model
model_path = os.path.join(os.path.dirname(__file__), "nutriscore_model.pkl")
joblib.dump(model, model_path)
print(f"Model saved to {model_path}")