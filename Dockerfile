FROM python:3.10-alpine

# Εγκαθιστά βασικά dev εργαλεία που χρειάζονται για κάποιες Python εξαρτήσεις
RUN apk add --no-cache gcc musl-dev libffi-dev

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
