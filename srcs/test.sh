# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 15:29:24 by ejahan            #+#    #+#              #
#    Updated: 2021/04/26 14:29:32 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# mv ./test-php.php /var/www/html
# mv ./test.php /var/www/html
# mv ./info.php /var/www/html
mv ./todolist.php /var/www/html
rm /etc/nginx/sites-available/*
mv ./default /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
# service nginx start

# certificat ssl
cd /etc
mkdir .mkcert
cd .mkcert
wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.2.0/mkcert-v1.2.0-linux-amd64
chmod +x mkcert
apt-get -y install libnss3-tools
./mkcert -install
./mkcert localhost

cd /root

    # php
service php7.3-fpm start

    # MariaDB
service mysql start
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'user'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

    # phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
rm /var/www/html/phpMyAdmin/config.sample.inc.php
cp /root/config.inc.php /var/www/html/phpMyAdmin/

    # wordpress
wget https://wordpress.org/latest.tar.gz
tar -zxvf latest.tar.gz
rm ./wordpress/wp-config-sample.php
mv ./wordpress/ /var/www/html
cp /root/wp-config.php /var/www/html/wordpress

chmod 755 /var/www/*
chown -R www-data:www-data /var/www/html/*

service php7.3-fpm restart
service nginx restart
service mysql restart
sleep infinity

bash
