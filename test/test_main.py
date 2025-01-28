import unittest
from main import app

class TestMain(unittest.TestCase):
    def test_home(self):
        from main import app
        tester = app.test_client(self)
        response = tester.get('/')
        self.assertEqual(response.status_code, 200)

if __name__ == "__main__":
    unittest.main()
