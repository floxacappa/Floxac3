#!/bin/bash
cd "$(dirname "$0")"
if command -v python3 >/dev/null; then
  (sleep 1; (open http://localhost:8080 2>/dev/null || xdg-open http://localhost:8080 2>/dev/null)) &
  python3 -m http.server 8080
else
  open index.html 2>/dev/null || xdg-open index.html
fi
