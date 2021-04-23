# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 15:29:24 by ejahan            #+#    #+#              #
#    Updated: 2021/04/23 17:07:00 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mkdir /var/www/localhost
# cp ./test.php /var/www/localhost
mv ./localhost /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
service nginx start

    # certificat ssl

    # php
service php7.3-fpm start

    # phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/localhost/phpMyAdmin
cp ./config.inc.php /var/www/localhost/phpMyAdmin/
echo "GRANT ALL ON *.* TO 'pma'@'localhost' IDENTIFIED BY 'pmapass'" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
# mkdir /var/www/localhost/phpMyAdmin/tmp
# chmod 777 /var/www/localhost/phpMyAdmin/tmp
# chown -R www-data:www-data /var/www/localhost/phpMyAdmin


service mysql start
service php7.3-fpm restart
service nginx restart
sleep infinity

bash
