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

sudo apt-get -y install zsh htop zip unzip composer

printf "${GREENCOLOR}Adding PPA For PHP7.2 ${NC} \n\n"
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo apt-get update

printf "${YELLOWCOLOR}Installing PHP7.2 ${NC} \n"
sudo apt-get -y install php7.2
sudo apt-get -y install php7.2-mysql
sudo apt-get -y install php7.2-curl php7.2-xml php7.2-json php7.2-gd php7.2-mbstring php7.2-bcmath
printf "${GREENCOLOR}Successfully Installed PHP7.2 ${NC} \n\n"

sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common
sudo apt-get remove -y apache2*
sudo apt-get -y autoremove

sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak

printf "${YELLOWCOLOR}Installing Supervisor ${NC} \n"

sudo apt-get -y install supervisor

printf "${GREENCOLOR}Everything is all set! ${NC} \n\n"