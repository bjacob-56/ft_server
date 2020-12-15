FROM	debian:buster

COPY	srcs .

WORKDIR	.

RUN	apt-get update -y && apt-get install -y \
bash \
sudo \
nginx \
openssl \
wget \
mariadb-server \
php-fpm \
php-mysql \
php-json \
php-mbstring \
php-cli \
php-curl \
php-gd \
php-intl

EXPOSE	80
EXPOSE	443

ENTRYPOINT	["bash", "mysh.sh"]

# docker build -t myserver .
# docker run --name=myserver -p 80:80 -p 443:443 -it --rm myserver
# docker exec -it myserver {COMMAND}

# docker exec -it myserver /bin/bash