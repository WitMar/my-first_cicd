FROM python:3.10-slim  # Bazowy obraz z Pythonem 3.10 w wersji slim (lekki)
WORKDIR /app           # Ustawienie katalogu roboczego na /app
COPY requirements.txt .  # Skopiowanie pliku requirements.txt do obrazu
RUN pip install -r requirements.txt  # Instalacja zależności
COPY main.py .         # Skopiowanie pliku aplikacji
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]  # Polecenie uruchamiające serwer FastAPI
