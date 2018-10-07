FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y wget \
    && wget https://github.com/HashLoad/goose/releases/download/v2.0.0/goose \
    && chmod +x goose