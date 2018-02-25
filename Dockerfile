FROM certbot/certbot

RUN set -x \
    && addgroup -g 501 -S certbot \
    && adduser -u 501 -D -S -h /etc/letsencrypt certbot certbot \
    && mkdir /var/log/letsencrypt \
    && chown -R certbot:500 /var/log/letsencrypt \
    && chown -R certbot:500 /etc/letsencrypt

USER certbot
