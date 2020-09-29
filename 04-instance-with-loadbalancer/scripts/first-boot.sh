#!/bin/bash
sudo atp update -y
sudo apt install nginx -y
sudo systemctl enable nginx
echo "this is $HOSTNAME" >> /var/www/html/index.html
