FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apt-utils
RUN apt-get -y install  nginx \
                        openssl

RUN rm -rf ./etc/nginx/sites-available/default
RUN rm -rf ./etc/nginx/sites-enabled/default
COPY /nginx.conf ./etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

RUN	mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey \
rsa:2048 -keyout /etc/nginx/ssl/rroland.key \
-out /etc/nginx/ssl/rroland.crt \
-subj '/C=RU/ST=Kazan/L=Kazan/O=Ecole42/OU=School21/CN=rroland'

RUN chmod -R 755 /etc/nginx/ssl/rroland*

EXPOSE 80 443 9000
CMD ["nginx", "-g", "daemon off;"]
# ENTRYPOINT /bin/bash run.sh