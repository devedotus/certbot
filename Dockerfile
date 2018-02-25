FROM certbot/certbot

# going to use custom directories so no more mkdir/chown needed
RUN set -x \
    && addgroup -g 501 -S certbot \
    && adduser -u 501 -D -S -h /opt/certbot certbot certbot

USER certbot
