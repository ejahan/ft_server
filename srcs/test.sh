# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 15:29:24 by ejahan            #+#    #+#              #
#    Updated: 2021/04/22 18:01:46 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mkdir var/www/localhost
cp ./test.php /var/www/localhost
mv ./localhost /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/localhost/phpMyAdmin
cp -pr /var/www/localhost/phpMyAdmin/config.sample.inc.php /var/www/localhost/phpMyAdmin/config.inc.php
# 
# 
# 


service nginx start
service php7.3-fpm start
service mysql start
sleep infinity

bash
