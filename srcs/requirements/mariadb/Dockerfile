FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apt-utils
RUN apt-get -y install default-mysql-server procps

COPY ./tools/my.cnf /etc/mysql/my.cnf
COPY ./tools/run.sh /var/www/
RUN chmod +x /var/www/run.sh

EXPOSE 3306

CMD ["/var/www/run.sh", "mysqld"]