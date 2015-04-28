# Pull base image.
FROM ubuntu

# Install Redis.
RUN apt-get update -y

RUN apt-get install -y redis-server

ADD /images/redis/redis.conf /etc/redis/redis.conf
# Define default command.
CMD ["redis-server"]

# Expose ports.
EXPOSE 6379