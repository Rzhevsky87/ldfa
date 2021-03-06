FROM php:7.4.25-fpm-bullseye

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN pecl install redis-5.1.1 \
    && pecl install xdebug-2.8.1 \
    && docker-php-ext-enable redis xdebug
