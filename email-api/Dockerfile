FROM python:3.9-slim

WORKDIR /app

COPY api-email.py .

RUN pip install flask requests

EXPOSE 5000

CMD ["python", "api-email.py"]