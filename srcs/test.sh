# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 15:29:24 by ejahan            #+#    #+#              #
#    Updated: 2021/04/24 16:00:11 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# mv ./test-php.php /var/www/localhost
rm /etc/nginx/sites-available/*
mv ./default /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
service nginx start

    # certificat ssl

    # php
service php7.3-fpm start

    # phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
cp ./config.inc.php /var/www/html/phpMyAdmin/
echo "GRANT ALL ON *.* TO 'pma'@'localhost' IDENTIFIED BY 'pmapass'" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
# mkdir /var/www/html/phpMyAdmin/tmp
chmod 755 /var/www/*
chown -R www-data:www-data /var/www/html/*

service mysql start
service php7.3-fpm restart
service nginx restart
sleep infinity

bash
