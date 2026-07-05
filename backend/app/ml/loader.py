import joblib
import os

_model = None

def load_model():
    global _model
    if _model is None:
        model_path = os.path.join(os.path.dirname(__file__), "nutriscore_model.pkl")
        if os.path.exists(model_path):
            _model = joblib.load(model_path)
        else:
            raise FileNotFoundError(f"Model not found at {model_path}")
    return _model