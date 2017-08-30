# docker-alpine-LAMPS
#### LAMPS (Linux-Apache-Mariadb-Php-Subversion) in a group of docker Alpine Linux images

____

The docker-alpine-LAMPS repository contains a group of scripts designed to install a "latest" version of each of the following LAMPS components (each in an associated docker Alpine Linux image) on a suitable Linux host:
  - Apache 2.2 Web Server
  - MariaDB Database Server (a MySql spin)
  - PHP 7 or PHP 5 or both
  - Subversion Repository Server using Apache2.2 + WebDAV + SVN_DAV-SVN
  
Each docker image is installed from the following available and maintained docker images on Docker Hub:
  - nimmis/alpine-apache-php7      (https://hub.docker.com/r/nimmis/apache-php7/)
  - nimmis/alpine-apache-php5      (https://hub.docker.com/r/nimmis/apache-php5/)
  - nimmis/alpine-mariadb (https://hub.docker.com/r/nimmis/alpine-mariadb/)
  - earthwalksoftware/alpine-svn (https://hub.docker.com/r/earthwalksoftware/alpine-svn/)
  - phpmyadmin/phpmyadmin (https://github.com/phpmyadmin/docker)
  
  
  
