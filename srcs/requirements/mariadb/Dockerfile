FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apt-utils
RUN apt-get -y install mariadb-server

RUN echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
RUN echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;"| mysql -u root --skip-password
RUN echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
RUN echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password

RUN service mariadb start

EXPOSE 3306
CMD ["mysqld"]