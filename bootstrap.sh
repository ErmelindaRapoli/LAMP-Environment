#!/usr/bin/env bash

#Apache
sudo apt-get update
sudo apt-get install -y apache2


sudo a2enmod actions rewrite
sudo service apache2 reload


#MySQL
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password v6He|jWTQNHk'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password v6He|jWTQNHk'
sudo apt-get -y install mysql-server

#PHP 7.1
sudo apt-get -y install python-software-properties
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install -y php7.1 php7.1-common php7.1-cli libapache2-mod-php7.1 php7.1-mcrypt php7.1-mysql php7.1-curl php7.1-mbstring php7.1-xml
sudo service apache2 reload

#Git
apt-get install -y git

#Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

#WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

#NodeJS
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#Install zip
sudo apt-get install -y zip
