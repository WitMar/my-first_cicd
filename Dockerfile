# Bazowy obraz z Pythonem 3.10 w wersji slim (lekki)
FROM python:3.10-slim
# Ustawienie katalogu roboczego na /app
WORKDIR /app
# Skopiowanie pliku requirements.txt do obrazu
COPY requirements.txt .
# Instalacja zależności
RUN pip install -r requirements.txt
# Skopiowanie pliku aplikacji
COPY main.py .
# Polecenie uruchamiające serwer FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]