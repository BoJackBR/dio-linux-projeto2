#!/bin/bash
#Projeto DIO - Script de provisionamento de um servidor web (apache)
#Criado por Wellington Rodrigues - 05/11/22

echo "Atualizando o sistema"
apt update -y && apt upgrade -y

#Instalando o Apache e unzip
apt install apache2 unzip -y

#Fazendo o download do arquivo no GitHub do Denilson
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

#Descompactando arquivo e movendo para pasta raiz do site
unzip /tmp/main.zip -d /tmp && mv /tmp/linux-site-dio-main/* /var/www/html -v

systemctl restart apache2
echo "Instalação concluída"
