FROM debian:buster

WORKDIR .

COPY . srcs

RUN	apt-get update && apt-get install \
nginx \
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


ENTRYPOINT	["bash", "srcs/mysh.sh"]