FROM ubuntu:18.04

LABEL maintainer="Ebonom Mfam ebonom.n.mfam@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    pip install --upgrade pip

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
