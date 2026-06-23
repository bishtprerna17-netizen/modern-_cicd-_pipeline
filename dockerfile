# 1. Base Python image uthao
FROM python:3.9-slim

# 2. Container ke andar folder set karo
WORKDIR /app

# 3. Pehle dependencies wali list copy karo aur install karo
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Ab baki bacha app ka code copy karo
COPY app.py .

# 5. Application ko port 8000 par start karo
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
