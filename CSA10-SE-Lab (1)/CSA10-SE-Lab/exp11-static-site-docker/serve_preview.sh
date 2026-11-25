#!/usr/bin/env bash
# No Docker needed: serve the same index.html on port 8080 to preview exactly what Nginx will serve.
cd "$(dirname "$0")"
python3 -m http.server 8080 >/dev/null 2>&1 & PID=$!; sleep 1
echo '$ curl -i http://localhost:8080/index.html'; curl -si http://localhost:8080/index.html
kill $PID
