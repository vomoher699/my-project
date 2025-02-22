FROM python:3.10-slim

WORKDIR /app
COPY . /app

RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt && \
    pip3 install --upgrade Flask Werkzeug 

EXPOSE 8000

# Fix CMD syntax (missing comma)
CMD ["python", "app.py"]
