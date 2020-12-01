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
dnf install -y httpd mysql-server mysql mod_ssl

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

sleep 5
#### get httpd.conf and backup
cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.bck 
mkdir repo
cd /root/repo
git clone https://github.com/juantortiz/linuxscripts.git

### install configuration file into system
cp /root/repo/linuxscripts/configs/httpd/httpd.conf /etc/httpd/conf/httpd.conf
systemctl restart httpd

mkdir pubcert
#### CERT
openssl req -nodes -newkey rsa:4096 -keyout /root/probcert/web.key -out /root/probcert/web.csr -subj "/C=AR/ST=CABA/L=Liniers/O=CONSULAN/OU=IT/CN=info@consulan.com.ar"







