FROM python:3.6

WORKDIR /app

COPY requirements.txt .

RUN python3 -m pip install --upgrade pip && \
    pip3 install -r requirements.txt

COPY app.py .

CMD ["python3", "app.py"]
