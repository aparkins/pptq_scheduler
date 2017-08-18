FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
        apt-transport-https \
        curl \
    && \
    apt-get clean


COPY ./.stack-work/install/x86_64-linux/lts-9.0/8.0.2/bin/backend-exe /opt/backend-exe
COPY ./static /opt/static

WORKDIR /opt

CMD bash
