#!/bin/bash
sudo apt install nginx -y
sudo systemctl enable nginx
echo "this is $HOSTNAME" >> /var/www/html/index.html
