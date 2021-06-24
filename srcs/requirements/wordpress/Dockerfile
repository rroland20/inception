FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apt-utils
RUN apt-get -y install	wordpress \
                        php7.3 php7.3-fpm php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

RUN mv usr/share/wordpress /var/www/html/wordpress
COPY /wp-config.php /var/www/html/wordpress
RUN mv /var/www/html/index.html /var/www/html/wordpress/
RUN rm -rf /var/www/html/wordpress/wp-config-sample.php

RUN sed -ie s1/run/php/php7.3-fpm.sock190001 /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir /run/php

EXPOSE 9000
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]