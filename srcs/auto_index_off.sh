# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    auto_index.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 15:53:10 by ejahan            #+#    #+#              #
#    Updated: 2021/04/25 17:26:32 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

rm /etc/nginx/sites-available/*
mv ./default_off /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default_off /etc/nginx/sites-enabled/
service nginx restart