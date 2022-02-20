FROM php:8.1-fpm-buster
# install composer
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip \
    vim \
    libpq-dev \
    && docker-php-ext-install pdo_mysql pdo_pgsql \
    && docker-php-ext-install opcache

# install composer
RUN cd /usr/bin && curl -s https://getcomposer.org/installer | php && ln -s /usr/bin/composer.phar /usr/bin/composer
WORKDIR /var/www/html/
