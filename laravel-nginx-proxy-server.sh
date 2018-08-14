#!/bin/bash

GREENCOLOR='\033[1;32m'
YELLOWCOLOR='\033[1;33m'
NC='\033[0m'

sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common
sudo apt-get -y autoremove
sudo service apache2 stop
sudo apt-get remove -y apache2*
sudo apt-get -y autoremove

printf "${GREENCOLOR}Nice And Clean,Let's Begin! ${NC} \n\n"

sudo apt-get update

printf "${YELLOWCOLOR}Installing Nginx ${NC} \n"

sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:nginx/development -y
sudo apt-get update
sudo apt-get -y install nginx

sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak

sudo service nginx start

printf "${GREENCOLOR}Nginx installed! ${NC} \n\n"