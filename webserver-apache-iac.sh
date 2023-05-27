#!/bin/bash


echo "Atualizando servidor e instalando Apache..."

apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y 

echo "Inciando provisionamento do servidor web Apache..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
