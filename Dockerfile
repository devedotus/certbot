FROM certbot/certbot

RUN set -x \
    && addgroup -g 500 -S certbot \
    && adduser -u 500 -D -S -h /opt/certbot certbot certbot

USER certbot
