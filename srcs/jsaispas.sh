# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    jsaispas.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:46:54 by ejahan            #+#    #+#              #
#    Updated: 2021/04/21 12:15:18 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

service nginx start
sleep infinity

# mkdir var/www/localhost
# mv ./default etc/nginx/sites-available
# ln -s etc/nginx/sites-available/default etc/nginx/sites-enabled
# chown -R www-data /var/www/*
# chmod -R 755 /var/www/*

ssl_certificate /etc/nginx/ssl/localhost.pem;
ssl_certificate_key /etc/nginx/ssl/localhost.key;

service php7.3-fpm start

# mkdir /var/www/localhost
# cp localhost_index_on /etc/nginx/sites-available/localhost
# ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/

# wget http://fr.wordpress.org/latest-fr_FR.tar.gz
# tar -xzvf latest-fr_FR.tar.gz
# cp -r wordpress /var/www/localhost/wordpress

bash

# wget http://fr.wordpress.org/latest-fr_FR.tar.gz
