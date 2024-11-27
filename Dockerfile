FROM composer:latest AS composer

FROM serversideup/php:8.3-fpm-nginx-alpine

USER root

# Copy our app files as www-data (33:33)
COPY --chown=www-data:www-data . /var/www/html

COPY --from=composer /usr/bin/composer /usr/bin/composer
