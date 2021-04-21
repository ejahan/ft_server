# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:47:25 by ejahan            #+#    #+#              #
#    Updated: 2021/04/21 12:15:39 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster-slim

RUN apt-get -y update && apt-get -y install mariadb-server \
			wget \
			nginx \
			openssl


COPY ./srcs/ ./root/

WORKDIR /root/

EXPOSE 80

ENTRYPOINT ["bash", "jsaispas.sh"]
