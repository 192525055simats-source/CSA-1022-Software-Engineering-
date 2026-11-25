import unittest
from app import app


class ApiTests(unittest.TestCase):
    def setUp(self):
        self.c = app.test_client()

    def test_home(self):
        r = self.c.get("/")
        self.assertEqual(r.status_code, 200)
        self.assertIn("Hello", r.get_json()["message"])

    def test_health(self):
        self.assertEqual(self.c.get("/health").get_json(), {"status": "ok"})

    def test_greet(self):
        self.assertEqual(self.c.get("/api/greet/Roobini").get_json()["greeting"], "Hello, Roobini!")

    def test_add_and_list(self):
        r = self.c.post("/api/items", json={"name": "Deploy to K8s"})
        self.assertEqual(r.status_code, 201)
        names = [i["name"] for i in self.c.get("/api/items").get_json()]
        self.assertIn("Deploy to K8s", names)

    def test_add_validation(self):
        self.assertEqual(self.c.post("/api/items", json={}).status_code, 400)


if __name__ == "__main__":
    unittest.main(verbosity=2)
