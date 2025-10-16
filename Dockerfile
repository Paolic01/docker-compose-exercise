
FROM python:3.9-slim


WORKDIR /app


COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt

# Copia tutto il codice dell'applicazione
COPY . .


EXPOSE 5499


CMD ["python", "app.py"]


