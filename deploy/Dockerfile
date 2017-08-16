FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
        apt-transport-https \
        curl \
    && \
    apt-get clean

RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo 'deb https://deb.nodesource.com/node_6.x xenial main' > /etc/apt/sources.list.d/nodesource.list && \
    echo 'deb-src https://deb.nodesource.com/node_6.x xenial main' >> /etc/apt/sources.list.d/nodesource.list

RUN apt-get update && \
    apt-get install -y \
        nodejs \
    && apt-get clean


WORKDIR /opt

RUN npm install -g elm

CMD elm reactor
