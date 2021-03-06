FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y wget tar \
    && wget https://github.com/HashLoad/goose/releases/download/v2.1.5/goose \
    -O /usr/bin/goose \
    && chmod +x /usr/bin/goose \
    && wget https://github.com/maxcnunes/waitforit/releases/download/v2.2.0/waitforit-linux_amd64 \
    -O /usr/bin/waitforit \
    && chmod +x /usr/bin/waitforit
WORKDIR /migrations
VOLUME /migrations
