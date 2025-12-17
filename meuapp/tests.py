from django.test import TestCase

class AppTest(TestCase):
    def test_ok(self):
        self.assertEqual(1 + 1, 2)
