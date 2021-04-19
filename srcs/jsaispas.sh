# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    jsaispas.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:46:54 by ejahan            #+#    #+#              #
#    Updated: 2021/04/19 12:04:40 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

service nginx start
mkdir /var/www/localhost
cp localhost_index_on /etc/nginx/sites-available/localhost
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/


wget http://fr.wordpress.org/latest-fr_FR.tar.gz
tar -xzvf latest-fr_FR.tar.gz
cp -r wordpress /var/www/localhost/wordpress


bash

# wget http://fr.wordpress.org/latest-fr_FR.tar.gz
