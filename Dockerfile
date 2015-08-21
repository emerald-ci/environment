FROM alpine

RUN sed -i -e 's/v3\.2/edge/g' /etc/apk/repositories && \
    apk --update add bash docker=1.8.1-r0 git curl && \
    curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

RUN mkdir /project
WORKDIR /project

RUN mkdir /build
COPY build.sh /build/build.sh

#ENTRYPOINT ["/build/build.sh"]

