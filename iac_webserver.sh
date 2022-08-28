#!/bin/bash

echo "Atualizando os repositórios e programas..."

apt update -y && apt upgrade -y 

echo "Instalando a Apache e unzip..."

apt install apache2 -y && apt install unzip

echo "Baixar o projeto do Github..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio

echo "Copiar os arquivos para o apache..."

cp -R * /var/www/html






