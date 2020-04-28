FROM php:7.2-apache

RUN apt-get update && apt-get install -y cron git-core jq unzip vim zip libxml2-dev unrar-free && \
    docker-php-ext-install \
    pdo pdo_mysql \
    && a2enmod \
    rewrite \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get -y install nodejs

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
  /usr/local/bin/composer global require hirak/prestissimo

RUN echo "* * * * * /usr/local/bin/php /var/www/html/artisan schedule:run > /proc/1/fd/1 2>/proc/1/fd/2" > /etc/cron.d/oc-cron && \
  crontab /etc/cron.d/oc-cron
