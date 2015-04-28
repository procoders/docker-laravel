#!/bin/sh

echo "Configuring environment..."

export USER=$USER
export UID=$UID

export APP_DEBUG=$APP_DEBUG
export PG_HOST=$POSTGRES_PORT_5432_TCP_ADDR
export PG_PORT=$POSTGRES_PORT_5432_TCP_PORT
export PG_DB_DATABASE=$PG_DB_DATABASE
export PG_USERNAME=$PG_USERNAME
export PG_PASSWORD=$PG_PASSWORD

export MD_HOST=$MARIA_PORT_5432_TCP_ADDR
export PMD_PORT=$MARIA_PORT_5432_TCP_PORT
export MD_DB_DATABASE=$MARIA_DB_DATABASE
export MD_USERNAME=$MARIA_USERNAME
export MD_PASSWORD=$MARIA_PASSWORD

export CACHE_DRIVER=$CACHE_DRIVER
export REDIS_HOST=$REDIS_PORT_6379_TCP_ADDR
export REDIS_PORT=$REDIS_PORT_6379_TCP_PORT

#useradd --uid $UID $USER
#echo "Running as $USER ($UID)"

#rm -rf /home/$USER/.ssh
#cp -r /home/$USER/.host-ssh /home/$USER/.ssh
#chown -R $USER:users /home/$USER/.ssh
#chmod -R 400 /home/$USER/.ssh

echo "Debug: $APP_DEBUG"
echo

#su $USER -m -c "$@"
#sudo "$@"
$@