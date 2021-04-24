# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 15:29:24 by ejahan            #+#    #+#              #
#    Updated: 2021/04/24 18:15:51 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mv ./test-php.php /var/www/html
mv ./test.php /var/www/html
mv ./info.php /var/www/html
rm /etc/nginx/sites-available/*
mv ./default /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
service nginx start

    # certificat ssl

    # php
service php7.3-fpm start

    # MariaDB
# echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
# echo "GRANT ALL ON wordpress.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'user'@'%';" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'user'@'%' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

    # phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
rm /var/www/htlm/phpMyAdmin/config.sample.inc.php
mv ./config.inc.php /var/www/html/phpMyAdmin/
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "GRANT ALL ON *.* TO 'pma'@'localhost' IDENTIFIED BY 'pmapass'" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

    # wordpress  -------->>>>>>> CA MARCHE PAAAAAAAAAAS
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -zxvf latest.tar.gz
rm /tmp/wordpress/wp-config-sample.php
cp /root/wp-config.php /var/www/html
cp -a /tmp/wordpress/. /var/www/html
              # <<<<<<<<<<---------

chmod 755 /var/www/*
chown -R www-data:www-data /var/www/html/*

service php7.3-fpm restart
service nginx restart
service mysql restart
sleep infinity

bash
