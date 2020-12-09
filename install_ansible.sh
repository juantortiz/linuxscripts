#!/bin/bash

#### INSTALL ANSIBLE CENTOS 8 CORE - MINIMAL INSTALL

dnf update -y 

#### INSTALL EPEL release

dnf install -y epel-release
dnf install -y ansible expect


##### generate ssh key for the hosts

ssh-keygen -q -b 4096 -t rsa -N '' -f ./id_rsa

#### FALTA la instalacion de las llaves en forma automatizada en cada nodo.

