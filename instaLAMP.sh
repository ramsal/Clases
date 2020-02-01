#!/bin/bash

#Instructions to use this script
#chmod +x instaLAMP.sh
#sudo ./instaLAMP.sh

# Check if running as root  
 if [ "$(id -u)" != "0" ]; then  
   echo "This script must be run as root" 1>&2  
   exit 1  
 fi  

#Add PHP7 PPA
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php

#Update the repositories
sudo apt-get update

#Apache, Php, MySQL and required packages installation
sudo apt-get -y install apache2 php7.0 libapache2-mod-php7.0 php7.0-mcrypt php7.0-curl php7.0-mysql php7.0-gd php7.0-cli php7.0-dev mysql-client
php7.0enmod mcrypt

#Set Permissions  
sudo chown -R www-data:www-data /var/www  

#The following commands set the MySQL root password to MYPASSWORD123 when you install the mysql-server package.
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password #CHANGEME'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password #CHANGEME'
sudo apt-get -y install mysql-server

#Restart all the installed services to verify that everything is installed properly
echo -e "\n"

service apache2 restart && service mysql restart > /dev/null
echo -e "\n"
php -v

if [ $? -ne 0 ]; then
   echo "Please Check the Install Services, There is some $(tput bold)$(tput setaf 1)Problem$(tput sgr0)"
else
   echo "Installed Services run $(tput bold)$(tput setaf 2)Sucessfully$(tput sgr0)"
fi

echo -e "\n"

#Create info.php for testing php processing
#sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php
