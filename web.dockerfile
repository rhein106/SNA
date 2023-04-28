FROM php:8.1-apache

EXPOSE 80

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html \
  && chmod -R 750 /var/www/html \
  && find /var/www/html -type d -exec chmod g+s {} \;

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli pdo pdo_mysql

