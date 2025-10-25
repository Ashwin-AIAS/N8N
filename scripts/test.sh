#!/usr/bin/env bash
set -euo pipefail
URL="http://localhost:5678/webhook/my-event"
DATA='{"title":"hello","body":"world"}'
RESPONSE=$(curl -sS -w "\n%{http_code}" -X POST "$URL" -H "Content-Type: application/json" -d "$DATA")
# split body and code
HTTP_CODE=$(echo "$RESPONSE" | tail -n1)
BODY=$(echo "$RESPONSE" | sed '$d')
if [ "$HTTP_CODE" = "200" ]; then
  echo "OK: 200"
  echo "Body:"
  echo "$BODY"
  exit 0
else
  echo "ERROR: HTTP $HTTP_CODE"
  echo "$BODY"
  exit 2
fi
