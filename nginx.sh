#!/usr/bin/env bash

//install nginx
sudo apt install nginx -y
///install ppa:certbot
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx
certbot --nginx

cd
wget https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
bash install-release.sh
wget -O /usr/local/etc/v2ray/config.json https://www.dropbox.com/s/jzexwjb0w0y3ztx/config.json
