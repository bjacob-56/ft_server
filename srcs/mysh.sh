

# Mysql
sudo mysql_secure_installation
sudo mariadb < mysql.sql
##

# Configure nginx
sudo mkdir /var/www/localhost
sudo chown -R $USER:$USER /var/www/localhost
sudo cp my_config /etc/nginx/sites-available/localhost # fichier my_config a completer
sudo ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
##

service nginx start # a mettre au debut ?
#/etc/init.d/php7.3-fpm start

# Connect mariadb with php
sudo cp config.php /var/www/localhost # a confirmer
##

# Install Phpmyadmin
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
sudo tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
sudo mv phpMyAdmin-4.9.0.1-all-languages phpMyAdmin
sudo mv phpMyAdmin /var/www/localhost
#sudo cp -pr /usr/share/phpMyAdmin/config.sample.inc.php /usr/share/phpMyAdmin/config.inc.php
#sudo cat /usr/share/phpMyAdmin/config.sample.inc.php
# configuration file a editer ?


# Install Wordpress
sudo wget http://fr.wordpress.org/latest-fr_FR.tar.gz
sudo tar -xzvf latest-fr_FR.tar.gz
sudo mv wordpress /var/www/localhost
sudo rm latest-fr_FR.tar.gz
sudo rm -f /var/www/localhost/wordpress/wp-config
sudo cp wp-config /var/www/localhost/wordpress
# fichier wp_config.php a creer en se connectant

sudo adduser wordpress
sudo chmod -R o-rwx /var/www/localhost/wordpress

