#!/usr/bin/env bash
# Local equivalent of "docker run" testing: unit tests + live curl calls against the running app.
cd "$(dirname "$0")"
echo '$ python3 -m unittest -v test_app.py'; python3 -m unittest -v test_app.py 2>&1
python3 app.py >/tmp/flask16.log 2>&1 & PID=$!; sleep 2
for c in 'curl -s -X POST -H "Content-Type: application/json" -d "{\"title\":\"Finish lab record\"}" http://localhost:5000/todos' \
         'curl -s -X POST -H "Content-Type: application/json" -d "{\"title\":\"Push image to Docker Hub\"}" http://localhost:5000/todos' \
         'curl -s -X PUT -H "Content-Type: application/json" -d "{\"done\":true}" http://localhost:5000/todos/1' \
         'curl -s http://localhost:5000/todos' 'curl -s -o /dev/null -w "DELETE /todos/2 -> HTTP %{http_code}" -X DELETE http://localhost:5000/todos/2'; do
  echo; echo "\$ $c"; sh -c "$c"; done; echo
kill $PID
