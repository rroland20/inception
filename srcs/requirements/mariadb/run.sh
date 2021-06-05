#!/usr/bin/env bash
# set -e

# sed -i "s/bind-ad/\#bind_ad/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
# sed -i "s/#port    /\port    /" "/etc/mysql/mariadb.conf.d/50-server.cnf"
# chown -R mysql:mysql /var/lib/mysql

# if [ ! -d var/lib/mysql/wp ]; then
# chmod 770 /var/lib/mysql
# chmod 755 var/run/mysqld/mysqld.sock
# chown -R mysql /var/run/mysqld
service mysql start
echo "CREATE DATABASE IF NOT EXISTS wordpress;"| mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password
# service mysql stop
# else
mkdir -p /var/run/mysqld
touch /var/run/mysqld/mysqld.pid
mkfifo /var/run/mysqld/mysqld.sock
# fi
# chmod 770 /var/lib/mysql
# chmod 755 var/run/mysqld/mysqld.sock
# chown -R mysql /var/run/mysqld
exec "$@"
