import unittest
import app as todo_app


class TodoTests(unittest.TestCase):
    def setUp(self):
        todo_app.todos.clear()
        todo_app.next_id = 1
        self.c = todo_app.app.test_client()

    def test_create_and_list(self):
        r = self.c.post("/todos", json={"title": "Write report"})
        self.assertEqual(r.status_code, 201)
        self.assertEqual(self.c.get("/todos").get_json()[0]["title"], "Write report")

    def test_update_marks_done(self):
        self.c.post("/todos", json={"title": "Buy milk"})
        r = self.c.put("/todos/1", json={"done": True})
        self.assertTrue(r.get_json()["done"])

    def test_delete(self):
        self.c.post("/todos", json={"title": "Temp"})
        self.assertEqual(self.c.delete("/todos/1").status_code, 204)
        self.assertEqual(self.c.get("/todos").get_json(), [])

    def test_validation_and_404(self):
        self.assertEqual(self.c.post("/todos", json={}).status_code, 400)
        self.assertEqual(self.c.delete("/todos/99").status_code, 404)


if __name__ == "__main__":
    unittest.main(verbosity=2)
