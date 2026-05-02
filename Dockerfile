FROM python:3.11-slim

WORKDIR /app

# Copia apenas o requirements primeiro
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copia o resto do projeto
COPY . .

EXPOSE 8000
CMD ["python", "app.py"]