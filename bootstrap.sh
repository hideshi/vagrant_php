#!/usr/bin/env bash

# install apache
sudo yum -y install httpd
sudo service httpd start
sudo chkconfig httpd on

# install mysql
sudo yum -y install mysql-server
sudo service mysqld start
sudo chkconfig mysqld on

# install PHP
sudo yum -y install php php-mysql

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/www /var/www
fi
