import numpy as np

FEATURE_FIELDS = [
    "sugars_100g",
    "saturated-fat_100g",
    "salt_100g",
    "fiber_100g",
    "proteins_100g",
]

def extract_features(nutriments: dict) -> np.ndarray:
    """Extract and normalize nutriment features for model input"""
    vec = []
    for field in FEATURE_FIELDS:
        # Handle both dash and underscore variants
        val = nutriments.get(field) or nutriments.get(field.replace("-", "_")) or 0
        val = float(val)
        val = max(0, min(100, val))  # clamp to valid range
        vec.append(val)
    return np.array([vec])