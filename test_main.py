from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_hello():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello World"}


def test_add_positive_numbers():
    response = client.get("/add/2/3")
    assert response.status_code == 200
    assert response.json() == {"result": 5}


def test_add_negative_numbers():
    response = client.get("/add/-2/1")
    assert response.status_code == 200
    assert response.json() == {"result": -1}
