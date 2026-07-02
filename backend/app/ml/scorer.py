from app.ml.loader import load_model
from app.ml.preprocessor import extract_features

def predict_nutriscore(nutriments: dict) -> str:
    """Predict Nutri-Score grade (A-E) from nutriments using ML model"""
    try:
        model = load_model()
        features = extract_features(nutriments)
        prediction = model.predict(features)
        return prediction[0]
    except Exception as e:
        print(f"ML prediction error: {e}")
        return None