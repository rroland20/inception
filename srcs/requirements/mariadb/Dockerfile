FROM debian:buster

RUN apt-get -y install mariadb-server

RUN echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
RUN echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;"| mysql -u root --skip-password
RUN echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
RUN echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password

EXPOSE 3306
