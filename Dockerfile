FROM python:3.10-slim

WORKDIR /app
COPY . /app

RUN pip3 install -r requirements.txt && \

EXPOSE 8000

# Fix CMD syntax (missing comma)
CMD ["python", "app.py"]
