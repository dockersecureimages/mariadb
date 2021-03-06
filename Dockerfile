FROM alpine:3.13.2
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="support@secureimages.dev"

ARG MARAIDB_VERSION=10.5.8-r0

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main pwgen \
        mariadb=${MARAIDB_VERSION} \
        mariadb-client=${MARAIDB_VERSION} \
        mariadb-server-utils=${MARAIDB_VERSION} &&\
    rm -rf /var/cache/apk/* /tmp/*

COPY data/ /

RUN chmod +x /entrypoint.sh &&\
    mkdir -p /docker-entrypoint-initdb.d /scripts/pre-exec.d /scripts/pre-init.d &&\
    chmod -R 755 /scripts

EXPOSE 3306

ENTRYPOINT ["/entrypoint.sh"]
