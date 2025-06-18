# Verwendet ein Python Image als Basis mit requirementstext
# Insalliert Abhängigkeiten und startet App

FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
