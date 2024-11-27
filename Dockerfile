FROM composer:latest AS composer

FROM serversideup/php:8.3-fpm-nginx-alpine

WORKDIR /var/www/html

COPY . /var/www/html

COPY --from=composer /usr/bin/composer /usr/bin/composer
