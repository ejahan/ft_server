# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    auto_index_on.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/25 17:27:13 by ejahan            #+#    #+#              #
#    Updated: 2021/04/25 17:27:20 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

rm /etc/nginx/sites-available/*
mv ./default /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
service nginx restart