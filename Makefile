# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rroland <rroland@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/23 17:28:45 by rroland           #+#    #+#              #
#    Updated: 2021/06/08 20:25:03 by rroland          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



all:
	docker-compose -f srcs/docker-compose.yaml up --build

down:
	docker-compose -f srcs/docker-compose.yaml down

cache:
	docker-compose -f srcs/docker-compose.yaml down --rmi all -v
	docker-compose -f srcs/docker-compose.yaml build --no-cache
	docker-compose -f srcs/docker-compose.yaml up