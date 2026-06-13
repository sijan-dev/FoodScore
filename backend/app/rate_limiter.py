import time
from collections import defaultdict
from typing import Dict, List, Tuple


class RateLimiter:
    """Simple in-memory rate limiter (per-IP, sliding window)."""

    def __init__(self, max_requests: int = 10, window_seconds: int = 60):
        self.max_requests = max_requests
        self.window_seconds = window_seconds
        self._requests: Dict[str, List[float]] = defaultdict(list)

    def check(self, ip: str) -> bool:
        """Returns True if request is allowed, False if rate limited."""
        now = time.time()
        cutoff = now - self.window_seconds

        # Clean old entries
        self._requests[ip] = [t for t in self._requests[ip] if t > cutoff]

        if len(self._requests[ip]) >= self.max_requests:
            return False

        self._requests[ip].append(now)
        return True

    def remaining(self, ip: str) -> int:
        """Returns how many requests the IP can still make."""
        now = time.time()
        cutoff = now - self.window_seconds
        self._requests[ip] = [t for t in self._requests[ip] if t > cutoff]
        return max(0, self.max_requests - len(self._requests[ip]))


# Global instance
auth_limiter = RateLimiter(max_requests=10, window_seconds=60)
