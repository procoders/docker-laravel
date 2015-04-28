FROM ubuntu
MAINTAINER "Oleg Kopachovets" <copeus@gmail.com>

WORKDIR /tmp

RUN apt-get update -y

RUN apt-get install -y \
php5-curl \
php-pear \
php5-dev \
php5-imagick \
php5-curl \
php5-mcrypt \
php5-mysqlnd \
php5-pgsql \
php5-memcache \
php5-redis \
php5-mongo \
php5-xdebug \
php5-xhprof \
php5-json

RUN php5enmod mcrypt

RUN apt-get install -y php5-cli git

ADD /images/php-cli/php.ini /etc/php5/cli/php.ini
ADD /images/php-cli/entrypoint.sh /entrypoint.sh

WORKDIR /
RUN php -r "readfile('https://getcomposer.org/installer');" | php

WORKDIR /data/www
ENTRYPOINT ["/entrypoint.sh"]