FROM certbot/certbot

# Group 500 is www-data in other images
RUN set -x \
    && addgroup -g 501 -S certbot \
    && adduser -u 501 -D -S -G -h /var/lib/letsencrypt certbot certbot \
    && mkdir /var/log/letsencrypt \
    && mkdir /etc/letsencrypt \
    && chown -R certbot:500 /var/log/letsencrypt \
    && chown -R certbot:500 /etc/letsencrypt

USER certbot
