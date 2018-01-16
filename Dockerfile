FROM php:7.1-apache

RUN apt-get update -y \
  && apt-get install -y libxml2-dev \
  && apt-get install -y libmcrypt-dev \
  && apt-get install -y mysql-client \
  && apt-get clean -y \
  && docker-php-ext-install mcrypt \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install soap \	
  && docker-php-ext-install pdo pdo_mysql 

RUN a2enmod rewrite
