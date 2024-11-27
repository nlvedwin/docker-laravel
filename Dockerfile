FROM composer:latest AS composer

FROM php:8.3.14-fpm

RUN docker-php-ext-install opcache

WORKDIR /app

COPY . /app

COPY --from=composer /usr/bin/composer /usr/bin/composer

CMD ["php-fpm"]
