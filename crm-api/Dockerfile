FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install flask requests jsonify

EXPOSE 3000

CMD ["python", "app.py"]