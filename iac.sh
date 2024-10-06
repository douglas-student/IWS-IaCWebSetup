#!/bin/bash

echo "Updating the server..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Downloading and copying the application files..."
cd /tmp
wget https://github.com/douglas-student/linux-do-zero-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-do-zero-site-dio-main
cp -R * /var/www/html/

service apache2 start

echo "The server is up and running!"