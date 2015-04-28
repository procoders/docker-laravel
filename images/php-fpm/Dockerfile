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

RUN apt-get install -y php5-fpm

ADD /images/php-fpm/php-fpm.conf /etc/php5/fpm/php-fpm.conf
ADD /images/php-fpm/php.ini /etc/php5/fpm/php.ini
ADD /images/php-fpm/www.conf /etc/php5/fpm/pool.d/www.conf

EXPOSE 9000
ENTRYPOINT ["/usr/sbin/php5-fpm", "-F", "-R"]
