from flask import Flask, jsonify, request

app = Flask(__name__)
todos = []
next_id = 1


@app.get("/")
def index():
    return jsonify(app="To-Do List API", endpoints=["/todos", "/todos/<id>"])


@app.get("/todos")
def list_todos():
    return jsonify(todos)


@app.post("/todos")
def create_todo():
    global next_id
    data = request.get_json(silent=True) or {}
    if not data.get("title"):
        return jsonify(error="title is required"), 400
    todo = {"id": next_id, "title": data["title"], "done": False}
    next_id += 1
    todos.append(todo)
    return jsonify(todo), 201


@app.put("/todos/<int:todo_id>")
def update_todo(todo_id):
    for t in todos:
        if t["id"] == todo_id:
            data = request.get_json(silent=True) or {}
            t["title"] = data.get("title", t["title"])
            t["done"] = data.get("done", t["done"])
            return jsonify(t)
    return jsonify(error="not found"), 404


@app.delete("/todos/<int:todo_id>")
def delete_todo(todo_id):
    global todos
    before = len(todos)
    todos = [t for t in todos if t["id"] != todo_id]
    if len(todos) == before:
        return jsonify(error="not found"), 404
    return "", 204


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
