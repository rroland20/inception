# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alena <alena@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/23 17:28:45 by rroland           #+#    #+#              #
#    Updated: 2021/06/23 14:08:36 by alena            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



all:
	sudo docker-compose -f srcs/docker-compose.yaml up

down:
	sudo docker-compose -f srcs/docker-compose.yaml down

rm_vol:
	sudo docker volume rm srcs_wp
	sudo docker volume rm srcs_db	

cache:
	sudo docker-compose -f srcs/docker-compose.yaml down --rmi all -v
	sudo docker-compose -f srcs/docker-compose.yaml build --no-cache
	sudo docker-compose -f srcs/docker-compose.yaml up
re:
	sudo docker-compose -f srcs/docker-compose.yaml up --build