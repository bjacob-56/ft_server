CREATE DATABASE my_db;
GRANT ALL ON my_db.* TO 'my_user'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit