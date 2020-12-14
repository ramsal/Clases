#!/bin/bash

#Instructions to use this script
#chmod +x instaLAMP.sh
#sudo ./instaLAMP.sh

# Check if running as root  
 if [ "$(id -u)" != "0" ]; then  
   echo "This script must be run as root" 1>&2  
   exit 1  
 fi  

#Update the repositories
sudo apt-get update

#Apache, Php, MySQL and required packages installation
sudo apt-get -y install apache2 

#Set Permissions  
sudo chown -R www-data:www-data /var/www  

#Firewall
ufw enable
ufw allow 22
ufw allow in "Apache Full"

#Install MySQL  
sudo apt-get -y install mysql-server
#sudo mysql_secure_installation

#Install PHP
sudo apt install php libapache2-mod-php php-mysql

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
sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php
