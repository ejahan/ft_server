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
