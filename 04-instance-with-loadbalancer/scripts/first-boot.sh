#!/bin/bash
ping -c 8 google.com
sudo apt install nginx -y
sudo systemctl enable nginx
echo "this is $HOSTNAME" >> /var/www/html/index.html
