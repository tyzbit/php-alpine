FROM php:fpm-alpine

RUN sed -i 's/\[::\]/127.0.0.1/g' /usr/local/etc/php-fpm.d/zz-docker.conf

WORKDIR /var/www/html
EXPOSE 9000
CMD ["php-fpm"]
