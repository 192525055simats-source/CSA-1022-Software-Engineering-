from flask import Flask, jsonify, request

app = Flask(__name__)
ITEMS = [{"id": 1, "name": "Learn Docker"}, {"id": 2, "name": "Learn Kubernetes"}]


@app.get("/")
def home():
    return jsonify(message="Hello from Flask on Kubernetes!", version="1.0")


@app.get("/health")
def health():
    return jsonify(status="ok")


@app.get("/api/greet/<name>")
def greet(name):
    return jsonify(greeting=f"Hello, {name}!")


@app.get("/api/items")
def list_items():
    return jsonify(ITEMS)


@app.post("/api/items")
def add_item():
    data = request.get_json(silent=True) or {}
    if "name" not in data:
        return jsonify(error="name is required"), 400
    item = {"id": len(ITEMS) + 1, "name": data["name"]}
    ITEMS.append(item)
    return jsonify(item), 201


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
