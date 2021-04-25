https://www.redhat.com/fr/topics/containers/what-is-docker
https://www.lebigdata.fr/docker-definition
https://www.wanadev.fr/23-tuto-docker-comprendre-docker-partie1/

https://forhjy.medium.com/42-ft-server-how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-2-4042adb2ab2c
https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10
https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861


https://medium.com/@migueldoctor/run-mysql-phpmyadmin-locally-in-3-steps-using-docker-74eb735fa1fc
https://manpages.debian.org/buster/docker.io/Dockerfile.5.en.html
https://www.freecodecamp.org/news/a-beginners-guide-to-docker-how-to-create-your-first-docker-application-cc03de9b639f/
https://github.com/alexandregv/42toolbox
https://putaindecode.io/articles/les-dockerfiles/
https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861
https://forhjy.medium.com/42-ft-server-how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-2-4042adb2ab2c
https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-10
https://openclassrooms.com/fr/courses/4425101-deployez-une-application-django/4688553-utilisez-le-serveur-http-nginx
https://github.com/iciamyplant/ft_server



https://github.com/pmouhali/ft_server


// 10.12.3.16

ampur




	// ~/42toolbox
./init_docker.sh

	// ~/desktop/ft_server
docker build -t test .				// creer conteneur avec nom (-t)
docker run -it --rm -p 80:80 test	
docker ps -a						// == ls -a
docker ps							// == ls
docker images						// liste des images
docker rmi 9e4982291206				// rm l'image 9e4982291206
exit 								// quitte le conteneur

// http://your_server_ip















// wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
// tar xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
// mv phpMyAdmin-4.9.0.1-all-languages var/www/localhost/phpmyadmin
mv ./config.inc.php var/www/localhost/phpmyadmin
// chmod 660 /var/www/l/ocalhost/phpmyadmin/config.inc.php
// chown -R www-data:www-data /var/www/localhost/phpmyadmin
// service php7.3-fpm start
echo "GRANT ALL ON *.* TO 'emma'@'localhost' IDENTIFIED BY '123'" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root



<?php
/* vim: set expandtab sw=4 ts=4 sts=4: */
/**
 * phpMyAdmin sample configuration, you can use it as base for
 * manual configuration. For easier setup you can use setup/
 *
 * All directives are explained in documentation in the doc/ folder
 * or at <https://docs.phpmyadmin.net/>.
 *
 * @package PhpMyAdmin
 */

/**
 * This is needed for cookie based authentication to encrypt password in
 * cookie. Needs to be 32 chars long.
 */
$cfg['blowfish_secret'] = '$2a$07$EJooQ7FWQIpYWJAMqd0mq.eRnrTTAkqpIwEv1InrJ8q0KMfAK0WLi'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

/**
 * Servers configuration
 */
$i = 0;

/**
 * First server
 */
$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['host'] = 'localhost';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;

/**
 * phpMyAdmin configuration storage settings.
 */

/* User used to manipulate with storage */
// $cfg['Servers'][$i]['controlhost'] = '';
// $cfg['Servers'][$i]['controlport'] = '';
$cfg['Servers'][$i]['controluser'] = 'root';
$cfg['Servers'][$i]['controlpass'] = '';

/* Storage database and tables */
// $cfg['Servers'][$i]['pmadb'] = 'phpmyadmin';
// $cfg['Servers'][$i]['bookmarktable'] = 'pma__bookmark';
// $cfg['Servers'][$i]['relation'] = 'pma__relation';
// $cfg['Servers'][$i]['table_info'] = 'pma__table_info';
// $cfg['Servers'][$i]['table_coords'] = 'pma__table_coords';
// $cfg['Servers'][$i]['pdf_pages'] = 'pma__pdf_pages';
// $cfg['Servers'][$i]['column_info'] = 'pma__column_info';
// $cfg['Servers'][$i]['history'] = 'pma__history';
// $cfg['Servers'][$i]['table_uiprefs'] = 'pma__table_uiprefs';
// $cfg['Servers'][$i]['tracking'] = 'pma__tracking';
// $cfg['Servers'][$i]['userconfig'] = 'pma__userconfig';
// $cfg['Servers'][$i]['recent'] = 'pma__recent';
// $cfg['Servers'][$i]['favorite'] = 'pma__favorite';
// $cfg['Servers'][$i]['users'] = 'pma__users';
// $cfg['Servers'][$i]['usergroups'] = 'pma__usergroups';
// $cfg['Servers'][$i]['navigationhiding'] = 'pma__navigationhiding';
// $cfg['Servers'][$i]['savedsearches'] = 'pma__savedsearches';
// $cfg['Servers'][$i]['central_columns'] = 'pma__central_columns';
// $cfg['Servers'][$i]['designer_settings'] = 'pma__designer_settings';
// $cfg['Servers'][$i]['export_templates'] = 'pma__export_templates';

/**
 * End of servers configuration
 */

/**
 * Directories for saving/loading files from server
 */
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';

/**
 * Whether to display icons or text or both icons and text in table row
 * action segment. Value can be either of 'icons', 'text' or 'both'.
 * default = 'both'
 */
//$cfg['RowActionType'] = 'icons';

/**
 * Defines whether a user should be displayed a "show all (records)"
 * button in browse mode or not.
 * default = false
 */
//$cfg['ShowAll'] = true;

/**
 * Number of rows displayed when browsing a result set. If the result
 * set contains more rows, "Previous" and "Next".
 * Possible values: 25, 50, 100, 250, 500
 * default = 25
 */
//$cfg['MaxRows'] = 50;

/**
 * Disallow editing of binary fields
 * valid values are:
 *   false    allow editing
 *   'blob'   allow editing except for BLOB fields
 *   'noblob' disallow editing except for BLOB fields
 *   'all'    disallow editing
 * default = 'blob'
 */
//$cfg['ProtectBinary'] = false;

/**
 * Default language to use, if not browser-defined or user-defined
 * (you find all languages in the locale folder)
 * uncomment the desired line:
 * default = 'en'
 */
//$cfg['DefaultLang'] = 'en';
//$cfg['DefaultLang'] = 'de';

/**
 * How many columns should be used for table display of a database?
 * (a value larger than 1 results in some information being hidden)
 * default = 1
 */
//$cfg['PropertiesNumColumns'] = 2;

/**
 * Set to true if you want DB-based query history.If false, this utilizes
 * JS-routines to display query history (lost by window close)
 *
 * This requires configuration storage enabled, see above.
 * default = false
 */
//$cfg['QueryHistoryDB'] = true;

/**
 * When using DB-based query history, how many entries should be kept?
 * default = 25
 */
//$cfg['QueryHistoryMax'] = 100;

/**
 * Whether or not to query the user before sending the error report to
 * the phpMyAdmin team when a JavaScript error occurs
 *
 * Available options
 * ('ask' | 'always' | 'never')
 * default = 'ask'
 */
//$cfg['SendErrorReports'] = 'always';

/**
 * You can find more configuration options in the documentation
 * in the doc/ folder or at <https://docs.phpmyadmin.net/>.
 */






server {
	listen 80;
	listen [::]:80;

	# listen 443 ssl;
	# listen [::]:443 ssl;

#	ssl_certificate /etc/nginx/ssl/localhost.pem;
#	ssl_certificate_key /etc/nginx/ssl/localhost.key;
	root /var/www/localhost;

	index index.php index.html index.htm index.nginx-debian.html;

	server_name _;

	location /{
		try_files $uri $uri/ =404;
		# autoindex on;
	}
	# location ~ \.php$ {
	# 	include snippets/fastcgi-php.conf;
	# 	fastcgi_pass unix:/run/php/php7.3-fpm.sock;
	# }
}






server {

	listen 80;
	listen [::]:80;

#	listen 443 ssl;
#	listen [::]:443 ssl;

#	ssl_certificate /etc/.mkcert/localhost.pem;
#	ssl_certificate_key /etc/.mkcert/localhost-key.pem;

	root /var/www/html;

#	autoindex on;

	index index.php index.html index.htm index.nginx-debian.html;

	server_name localhost;

	location / {
		try_files $uri $uri/ =404;
	}

	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/run/php/php7.3-fpm.sock;
	}
}




localhost/index.html
localhost/wordpress
localhost/wordpress/wp-config
localhost/phpMyAdmin



// # configuration certificat ssl
cd /etc/
mkdir .mkcert
cd /etc/.mkcert
wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.2.0/mkcert-v1.2.0-linux-amd64
chmod +x mkcert
apt-get -y install libnss3-tools
./mkcert -install
./mkcert localhost


define('AUTH_KEY',         '$^xX2$l:iX-EY1|54HR|Psabsi x4w9=Skv!%_!-zc!g}/[Oc.@}Ml.-u<)[o|{+');
define('SECURE_AUTH_KEY',  'fWQ8g(y!;w-.v4p43@]V>(3kSa&a6I+xlTzK`VHD1%>J4; vF~<ap<|cr9Cc*uPG');
define('LOGGED_IN_KEY',    'NC3:jLdKJFpD(H)lx$yee>G1:^[~,pKhah*fSqoh5+?9nws$]TMuQ:+F1H-Z30&m');
define('NONCE_KEY',        '7+0R+,!(LWx4JMwq(Om+koW_>feHKD0i7h![6*|i|b[$N5&@LsZq~+UAI8`E571%');
define('AUTH_SALT',        'O*e G:QMwY=U96/t8|C$:?:?Q*91|,|BonW0#->x2j0i{t1BJ) }Vz[2_Q!,F1=I');
define('SECURE_AUTH_SALT', 'iJD*ekt&Zp6bU-Qjmbv -vE;w},W-@kesghZ$>o@;`x%Sm5t4,N2bzT&ebqiRx4|');
define('LOGGED_IN_SALT',   'g|&^O-]cq{Y7(Vb2YqEaJ|[Z #g(#mHv]5Wr-y)76k6t)h|d#E5kJ -`vByLDNsF');
define('NONCE_SALT',       ';DnF3zm]aj21(hQ=JVjg$wMBrF-i,m(?S?!#`s}LmB~?%o,k5&,6 k +O+?xqVRf');


define( 'AUTH_KEY',         'put your unique phrase here' );
define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
define( 'NONCE_KEY',        'put your unique phrase here' );
define( 'AUTH_SALT',        'put your unique phrase here' );
define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
define( 'NONCE_SALT',       'put your unique phrase here' );





