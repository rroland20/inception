# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alena <alena@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/23 17:28:45 by rroland           #+#    #+#              #
#    Updated: 2021/05/31 23:34:30 by alena            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



all:
	cd srcs | sudo docker-compose up --build
