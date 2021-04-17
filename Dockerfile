# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:47:25 by ejahan            #+#    #+#              #
#    Updated: 2021/04/17 15:50:16 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster-slim

# RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
# RUN apt-get -y update && apt-get -y install mariadb-server \ wget \ php \ php-cli \ php-cgi \ php-mbstring \ php-fpm \ php-mysql \ nginx \ libnss3-tools

COPY ./srcs/ ./

# EXPOSE 80

ENTRYPOINT ["bash", "jsaispas.sh"]
