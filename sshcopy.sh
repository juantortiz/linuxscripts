#!/bin/bash
#############
# Generation of private keys and public keys 
# Copy the public keys in a https server and deploy.
# 


ssh-keygen -b 4092 -t rsa -f /root/DEV/sshkey -q -N "" 

while read line; 
do 
    ssh-copy-id -i ~/.ssh/id_rsa $line
    sleep 3
done < $1




