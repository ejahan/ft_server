# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:47:25 by ejahan            #+#    #+#              #
#    Updated: 2021/04/19 11:37:07 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster-slim

RUN apt-get -y update && apt-get -y install mariadb-server \
            wget \
            php \
            php-cli \
            php-cgi \
            php-mbstring \
            php-fpm \
            php-mysql \
            nginx \
            libnss3-tools


COPY ./srcs/ ./root/

WORKDIR /root/

# EXPOSE 80

ENTRYPOINT ["bash", "jsaispas.sh"]
