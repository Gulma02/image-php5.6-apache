FROM php:5.6-apache

COPY . /var/www
WORKDIR /var/www

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN a2enmod rewrite

EXPOSE 80