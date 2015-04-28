FROM ubuntu
MAINTAINER "Oleg Kopachovets" <copeus@gmail.com>

WORKDIR /tmp

RUN apt-get update -y
RUN mkdir -p /data/www/public && mkdir -p /data/logs

RUN apt-get install -y nginx

ADD images/nginx/nginx.conf /etc/nginx/nginx.conf

ADD images/nginx/laravel.conf /etc/nginx/sites-available/laravel
RUN ln -s /etc/nginx/sites-available/laravel /etc/nginx/sites-enabled/laravel
RUN rm /etc/nginx/sites-enabled/default

ADD images/nginx/entrypoint.sh /entrypoint.sh

EXPOSE 80
CMD ["/entrypoint.sh"]
