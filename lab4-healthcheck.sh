#!/usr/bin/env bash
set -euo pipefail

URL="http://127.0.0.1:8000/"
CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$CODE" -eq 200 ]; then
    echo "OK — сервис доступен (HTTP $CODE)"
    exit 0
else
    echo "FAIL — сервис недоступен (HTTP $CODE)"
    exit 1
fi
