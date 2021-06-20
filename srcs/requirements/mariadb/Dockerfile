FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apt-utils
RUN apt-get -y install  vim \
                        mariadb-server 

# RUN mkdir /var/run/mysqld
# RUN chown -R mysql /var/run/mysqld

COPY ./my.cnf /etc/mysql/my.cnf
COPY ./run.sh /var/www/
RUN chmod +x /var/www/run.sh

EXPOSE 3306

CMD ["/var/www/run.sh", "mysql"]