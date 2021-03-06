!#bin/bash

### update first
dnf update -y

sleep 5
### Install git
dnf install git -y 

sleep 5
### Install epel-release
dnf intall epel-release -y

sleep 5
### Install remi-release-8
dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y


sleep 5
### Install systems httpd, mysql
dnf install -y httpd mysql-server mysql 

sleep 5
### Install php
dnf module -y enable php:remi-8.0
dnf install -y php php-cli php-common

sleep 5
### Enable systems
systemctl enable httpd mysqld


sleep 5
### Activate systems
systemctl start httpd mysqld 




