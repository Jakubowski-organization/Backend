#Obraz Dockera będzie oparty na obrazie Pythona w wersji 3.10.10
FROM python:3.10.10
#Ustawienie zmiennej środowiskowej
ENV FLASK_APP=main.py
#Katalog roboczy
WORKDIR /app
#Skopiowanie pliku requirements.txt
COPY requirements.txt .
#Instalacja pakietów z pliku requirements.txt
RUN pip install -r requirements.txt
#Kopiowanie plików
COPY . .
#Wybranie portu
EXPOSE 8080
#Uruchomienie pliku main.py
CMD ["python", "main.py"]
