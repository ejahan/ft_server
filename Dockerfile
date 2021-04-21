# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:47:25 by ejahan            #+#    #+#              #
#    Updated: 2021/04/21 14:55:58 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster-slim

RUN apt-get -y update && apt-get -y install mariadb-server mariadb-client \
			wget \
			nginx \
			openssl

RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli \
			php7.3-common php7.3-json php7.3-opcache php7.3-readline

COPY ./srcs/ ./root/

WORKDIR /root/

ENTRYPOINT ["bash", "jsaispas.sh"]
