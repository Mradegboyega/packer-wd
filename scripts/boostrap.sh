#!/bin/bash

# Update package list and install nginx
sudo apt-get install nginx -y

# Enable and start nginx
sudo systemctl enable nginx
sudo systemctl start nginx

#install firewall
sudo apt-get install ufw

# Allow incoming traffic for SSH, HTTPS, and HTTP
sudo ufw allow 22
sudo ufw allow 443
sudo ufw allow 80
sudo ufw allow tcp/udp

# Enable the firewall
sudo ufw --force enable
