#!/usr/bin/env bash
# Runs the unit tests, then starts the API and exercises every endpoint with curl.
cd "$(dirname "$0")"
echo '$ python3 -m unittest -v test_app.py'; python3 -m unittest -v test_app.py 2>&1
python3 app.py >/tmp/flask12.log 2>&1 & PID=$!; sleep 2
for c in 'curl -s http://localhost:5000/' 'curl -s http://localhost:5000/health' 'curl -s http://localhost:5000/api/greet/Roobini' \
         'curl -s -X POST -H "Content-Type: application/json" -d "{\"name\":\"Push image\"}" http://localhost:5000/api/items' \
         'curl -s http://localhost:5000/api/items'; do
  echo; echo "\$ $c"; sh -c "$c"; done
kill $PID
