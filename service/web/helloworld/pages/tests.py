import random

from django.test import Client, TestCase
from django.urls import reverse

class ViewTestCase(TestCase):
    def setUp(self):
        self.client = Client()

    def test_home(self):
        response = self.client.get(reverse('home'))
        self.assertEqual(response.status_code, 200)

    def test_random(self):
        result = random.choice((True, False))
        self.assertEqual(result, True)

