FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN adduser --disabled-password --gecos "" thor

USER thor

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "app/app.py" ]


