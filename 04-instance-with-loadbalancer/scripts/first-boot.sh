#!/bin/sh
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx 
sudo systemctl start nginx 
echo $HOSTNAME >> /var/www/html/index.html 

