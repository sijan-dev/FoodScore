import os
import unittest
from types import SimpleNamespace
from unittest.mock import patch

os.environ.setdefault("DATABASE_URL", "sqlite:///:memory:")
os.environ.setdefault("SECRET_KEY", "test-secret")
os.environ.setdefault("GOOGLE_CLIENT_ID", "test-google-client")

from app.services import auth_service  # noqa: E402


class _Query:
    def __init__(self, username_exists: bool = False):
        self._username_exists = username_exists

    def filter(self, *_args, **_kwargs):
        return self

    def first(self):
        return object() if self._username_exists else None


class _Session:
    def __init__(self, username_exists: bool = False):
        self._username_exists = username_exists
        self.committed = False
        self.refreshed = None

    def query(self, _model):
        return _Query(self._username_exists)

    def commit(self):
        self.committed = True

    def refresh(self, user):
        self.refreshed = user


class AuthServiceTests(unittest.TestCase):
    def test_register_user_rejects_short_password(self):
        with self.assertRaisesRegex(ValueError, "at least 6 characters"):
            auth_service.register_user(_Session(), "alice", "alice@example.com", "12345")

    def test_register_user_hashes_password_and_creates_user(self):
        created = {}
        user = SimpleNamespace(user_id="user-1")

        with (
            patch.object(auth_service, "get_user_by_email", return_value=None),
            patch.object(auth_service, "hash_password", side_effect=lambda password: f"hashed:{password}"),
            patch.object(auth_service, "create_user", side_effect=lambda **kwargs: created.update(kwargs) or user),
        ):
            result = auth_service.register_user(_Session(), "alice", "alice@example.com", "secret123")

        self.assertIs(result, user)
        self.assertEqual(created["password_hash"], "hashed:secret123")
        self.assertEqual(created["username"], "alice")
        self.assertEqual(created["email"], "alice@example.com")

    def test_google_user_refreshes_existing_profile(self):
        user = SimpleNamespace(display_name="Old Name", avatar_url=None)
        db = _Session()

        with (
            patch.object(auth_service, "get_user_by_google_id", return_value=user),
            patch.object(
                auth_service,
                "get_user_by_email",
                side_effect=AssertionError("email lookup should not run when google user exists"),
            ),
        ):
            result = auth_service.authenticate_or_create_google_user(
                db,
                {"sub": "google-123", "name": "New Name", "picture": "https://img.example/avatar.png"},
            )

        self.assertIs(result, user)
        self.assertEqual(user.display_name, "New Name")
        self.assertEqual(user.avatar_url, "https://img.example/avatar.png")
        self.assertTrue(db.committed)
        self.assertIs(db.refreshed, user)

    def test_google_user_links_existing_email_account(self):
        user = SimpleNamespace(google_id=None, display_name=None, avatar_url=None)
        db = _Session()

        with (
            patch.object(auth_service, "get_user_by_google_id", return_value=None),
            patch.object(auth_service, "get_user_by_email", return_value=user),
        ):
            result = auth_service.authenticate_or_create_google_user(
                db,
                {
                    "sub": "google-456",
                    "email": "returning@example.com",
                    "name": "Returning User",
                    "picture": "https://img.example/returning.png",
                },
            )

        self.assertIs(result, user)
        self.assertEqual(user.google_id, "google-456")
        self.assertEqual(user.display_name, "Returning User")
        self.assertEqual(user.avatar_url, "https://img.example/returning.png")
        self.assertTrue(db.committed)
        self.assertIs(db.refreshed, user)


if __name__ == "__main__":
    unittest.main()
