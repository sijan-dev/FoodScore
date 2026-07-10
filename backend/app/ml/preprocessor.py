import numpy as np
import logging

logger = logging.getLogger(__name__)

FEATURE_FIELDS = [
    "sugars_100g",
    "saturated_fat_100g",
    "salt_100g",
    "fiber_100g",
    "proteins_100g",
]

def extract_features(nutriments: dict) -> np.ndarray:
    """Extract and normalize nutriment features for model input.
    Missing fields are treated as 0 (model was trained with 0 for missing)."""
    vec = []
    for field in FEATURE_FIELDS:
        val = nutriments.get(field)
        if val is None:
            val = nutriments.get(field.replace("_", "-"))
        if val is None:
            val = 0
        val = float(val)
        val = max(0, min(100, val))
        vec.append(val)
    return np.array([vec])