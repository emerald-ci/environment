FROM alpine

RUN sed -i -e 's/v3\.2/edge/g' /etc/apk/repositories && \
    apk --update add bash docker=1.8.1-r0 git curl python python-dev py-pip build-base && \
    pip install docker-compose && \
    rm -rf /var/cache/apk/*

RUN mkdir /project
WORKDIR /project

RUN mkdir /build
COPY script.sh /build/script.sh

ENTRYPOINT ["/build/script.sh"]

