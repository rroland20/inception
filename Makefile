# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rroland <rroland@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/23 17:28:45 by rroland           #+#    #+#              #
#    Updated: 2021/06/03 14:31:35 by rroland          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



all:
	docker-compose -f srcs/docker-compose.yaml up --build

down:
	docker-compose -f srcs/docker-compose.yaml down