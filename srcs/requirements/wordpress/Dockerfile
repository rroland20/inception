FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apt-utils
RUN apt-get -y install	wget
RUN apt-get -y install	wordpress
RUN apt-get -y install	php7.3 php7.3-fpm php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

#Wordpress
RUN mv usr/share/wordpress /var/www/html/wordpress
COPY /wp-config.php /var/www/html/wordpress
RUN rm -rf /var/www/html/wordpress/wp-config-sample.php

#PhpMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar -xvzf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.4-all-languages /var/www/html/phpmyadmin
RUN rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz
COPY /config.inc.php /var/www/html/phpmyadmin
RUN rm -rf /var/www/html/phpmyadmin/config.sample.inc.php

EXPOSE 9000 3306