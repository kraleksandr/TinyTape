#!/bin/zsh
cd "$(dirname "$0")"

PORT=8000
URL="http://127.0.0.1:$PORT"

if ! nc -z 127.0.0.1 "$PORT" >/dev/null 2>&1; then
  python3 -m http.server "$PORT" --bind 127.0.0.1 &
fi

sleep 1
open -a "Google Chrome" "$URL"
