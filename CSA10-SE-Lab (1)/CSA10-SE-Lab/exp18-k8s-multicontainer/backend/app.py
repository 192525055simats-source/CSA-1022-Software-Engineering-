import os
import socket

from flask import Flask, jsonify

app = Flask(__name__)
DB_HOST = os.environ.get("DB_HOST", "db")
DB_PORT = int(os.environ.get("DB_PORT", "5432"))


def db_reachable():
    try:
        with socket.create_connection((DB_HOST, DB_PORT), timeout=1):
            return True
    except OSError:
        return False


@app.get("/api/status")
def status():
    return jsonify(backend="up", database="up" if db_reachable() else "unreachable", host=socket.gethostname())


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
