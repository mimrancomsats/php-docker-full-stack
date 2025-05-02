FROM php:apache

RUN apt-get update
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
WORKDIR /var/www/html

COPY index.php .
