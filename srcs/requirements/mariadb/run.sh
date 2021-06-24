#!/bin/bash

service mysql start
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"| mysql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"| mysql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;"| mysql
echo "FLUSH PRIVILEGES;"| mysql

mysqladmin -u root password $MYSQL_PASSWORD

exec "$@"

