FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 6767

ENV FLASK_APP=api.py

CMD ["python", "api.py"]
