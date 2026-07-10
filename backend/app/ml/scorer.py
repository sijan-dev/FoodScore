import logging
from app.ml.loader import load_model
from app.ml.preprocessor import extract_features

logger = logging.getLogger(__name__)

def predict_nutriscore(nutriments: dict) -> str:
    """Predict Nutri-Score grade (A-E) from nutriments using ML model"""
    try:
        model = load_model()
        features = extract_features(nutriments)
        prediction = model.predict(features)
        return prediction[0]
    except Exception as e:
        logger.error("ML prediction error: %s", e)
        return None