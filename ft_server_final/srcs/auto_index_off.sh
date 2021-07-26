# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    auto_index_off.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:53:10 by ejahan            #+#    #+#              #
#    Updated: 2021/04/26 15:26:33 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

rm /etc/nginx/sites-available/*
rm /etc/nginx/sites-enabled/*
cp ./default_off /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default_off /etc/nginx/sites-enabled/
service nginx restart