FROM python:3.10-slim

WORKDIR /app
COPY . /app

RUN pip3 install -r requirements.txt \
    pip install --upgrade Flask Werkzeug


EXPOSE 8000
CMD [ "python" "app.py" ]
