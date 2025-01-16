FROM python:3.10.12-slim
WORKDIR /app
COPY ./requirements.txt .
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/* && pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r ./requirements.txt
CMD ["python", "-B", "/app/main.py"]
