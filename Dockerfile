FROM certbot/certbot
RUN set -x \
    && addgroup -g 500 -S www-data \
    && adduser -u 500 -D -S -G www-data www-data \
    && chown -R www-data: /etc/letsencrypt \
    && chown -R www-data: /var/log
USER www-data
