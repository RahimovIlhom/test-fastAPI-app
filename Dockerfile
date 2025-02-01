FROM python:3.10-slim

# Ishchi katalogni sozlaymiz
WORKDIR /app

# Talablar faylini nusxalaymiz
COPY requirements.txt .

# Kerakli paketlarni o'rnatamiz
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Ilova kodini nusxalaymiz
COPY . .

# FastAPI ilovasini ishga tushiramiz
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]