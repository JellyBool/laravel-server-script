#!/bin/bash

GREENCOLOR='\033[1;32m'
YELLOWCOLOR='\033[1;33m'
NC='\033[0m'

sudo apt-get update

printf "${GREENCOLOR}Adding certbot PPA ${NC} \n\n"

sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:certbot/certbot -y
sudo apt-get update

printf "${YELLOWCOLOR}Installing certbot nginx ${NC} \n"

sudo apt-get install python-certbot-nginx

printf "${GREENCOLOR}Successfully Installed certbot nginx ${NC} \n\n"

#sudo certbot --nginx -d nuli.io -d www.nuli.io

# cron every month
# 0 0 1 * * /usr/bin/certbot renew --quiet --renew-hook "/bin/systemctl reload nginx"