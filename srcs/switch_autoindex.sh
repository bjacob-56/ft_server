
if cmp myconfig_autoindex_on /etc/nginx/sites-available/localhost
then
	sudo cp myconfig_autoindex_off /etc/nginx/sites-available/localhost
else
	sudo cp myconfig_autoindex_on /etc/nginx/sites-available/localhost
fi
service nginx restart