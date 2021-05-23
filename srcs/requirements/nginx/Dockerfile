FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apt-utils
RUN apt-get -y install nginx

RUN rm -rf ./etc/nginx/sites-available/default
RUN rm -rf ./etc/nginx/sites-enabled/default
COPY ./srcs/requirements/nginx/nginx.conf ./etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

# COPY ./srcs/run.sh .

EXPOSE 80 443
# ENTRYPOINT /bin/bash run.sh