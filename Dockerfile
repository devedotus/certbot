FROM certbot/certbot

RUN set -x \
    && addgroup -g 501 -S nginx \
    && adduser -u 501 -D -S -h /var/lib/letsencrypt nginx nginx \
    && mkdir /var/log/letsencrypt \
    && chown -R nginx:500 /var/log/letsencrypt \
    && chown -R nginx:500 /etc/letsencrypt

USER nginx
