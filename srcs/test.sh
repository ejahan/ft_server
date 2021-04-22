# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 15:29:24 by ejahan            #+#    #+#              #
#    Updated: 2021/04/22 17:35:19 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mkdir var/www/localhost
cp ./test.php /var/www/localhost
mv ./localhost /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/

service nginx start
service php7.3-fpm start
service mysql start
sleep infinity

bash
