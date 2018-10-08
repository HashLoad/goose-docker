FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y wget \
    && wget https://github.com/HashLoad/goose/releases/download/v2.0.0/goose > \
    /usr/bin/goose \
    && chmod +x /usr/bin/goose \
    && wget https://github.com/maxcnunes/waitforit/releases/download/v2.2.0/waitforit-linux_amd64 > \
    /usr/bin/waitforit \
    && chmod +x /usr/bin/waitforit
WORKDIR /migrations
VOLUME /migrations