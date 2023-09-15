FROM php:7.4-fpm-alpine

# $PHP_INI_DIR - значение берется из образа php:7.4-fpm-alpine

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

COPY ./conf.d /usr/local/etc/php/conf.d

WORKDIR /app