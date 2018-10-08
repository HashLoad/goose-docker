FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y wget \
    && wget https://github.com/HashLoad/goose/releases/download/v2.0.0/goose > \
    /usr/bin/goose \
    && chmod +x /usr/bin/goose
WORKDIR /migrations
VOLUME /migrations