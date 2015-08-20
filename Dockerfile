FROM alpine

RUN apk --update add docker git curl && \
    curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

RUN mkdir /project
WORKDIR /project

ADD build.sh build.sh

ENTRYPOINT ["./build.sh"]

