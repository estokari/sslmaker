FROM alpine

RUN apk add --update-cache \
    nginx \
    vim \
    openssl

RUN mkdir /run/nginx/ && nginx;

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
