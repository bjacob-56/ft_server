# Questions 
# 
# besoin de rentrer a chaque fois les infos pour le SSL ?
# en https autoindex off : acces refusé --> normal ou pas ?
# 
# redirection vers 443 
# 


# Mysql
service mysql start
sudo mariadb < mysql.sql
##

# openssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=US/ST=a/L=a/O=a/OU=a/CN=latest"
##

# Configure nginx
sudo mkdir /var/www/localhost
sudo chown -R $USER:$USER /var/www/localhost
sudo cp myconfig_autoindex_off /etc/nginx/sites-available/localhost
sudo ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
##

service nginx start
/etc/init.d/php7.3-fpm start

# Connect mariadb with php
# sudo cp test.php /var/www/localhost # a confirmer
##

# Install Phpmyadmin
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
sudo tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
sudo rm phpMyAdmin-4.9.0.1-all-languages.tar.gz
sudo mv phpMyAdmin-4.9.0.1-all-languages phpmyadmin
sudo mv phpmyadmin /var/www/localhost

sudo cp -pr config.inc.php /var/www/localhost/phpmyadmin
sudo rm -f config.inc.php
sudo rm -f /var/www/localhost/phpmyadmin/config.sample.inc.php


# Install Wordpress
sudo wget http://fr.wordpress.org/latest-fr_FR.tar.gz
sudo tar -xzvf latest-fr_FR.tar.gz
sudo mv wordpress/* /var/www/localhost
sudo rm latest-fr_FR.tar.gz
sudo rm -f /var/www/localhost/wp-config-sample.php
sudo mv wp-config.php /var/www/localhost/

#sudo adduser wordpress
#sudo chmod -R o-rwx /var/www/localhost/wordpress

tail -f /var/log/nginx/access.log /var/log/nginx/error.log
