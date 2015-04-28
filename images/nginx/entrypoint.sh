#!/bin/sh

#cp /etc/nginx/nginx.base.conf /etc/nginx/nginx.conf
#sed -i "s/%php-fpm-ip%/$PHP_FPM_PORT_9000_TCP_ADDR/" /etc/nginx/nginx.conf
#sed -i "s/%php-fpm-port%/$PHP_FPM_PORT_9000_TCP_PORT/" /etc/nginx/nginx.conf

mkdir -p -m 777 /data/logs

/usr/sbin/nginx "$@"