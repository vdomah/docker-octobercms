FROM php:7.2-apache

RUN docker-php-ext-install \
    pdo pdo_mysql \
    && a2enmod \
    rewrite \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get -y install nodejs \
    && curl -sS https://getcomposer.org/installer -o composer-setup.php \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && apt-get -y install git
