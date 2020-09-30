#!/bin/bash
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
ping -c 8 google.com
sudo apt install nginx -y
sudo systemctl enable nginx
echo "this is $HOSTNAME" >> /var/www/html/index.html
