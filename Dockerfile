FROM php:8.3-fpm

# Installation OPcache, Xdebug and APCu
RUN docker-php-ext-install opcache pdo_mysql
RUN pecl install apcu xdebug \
    && docker-php-ext-enable apcu xdebug

COPY php.ini /usr/local/etc/php/

# RUN docker-php-ext-install ...

WORKDIR /var/www/html