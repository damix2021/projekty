#!/bin/bash

apt update

apt upgrade

cd /

wget https://files.teamspeak-services.com/releases/server/3.13.6/teamspeak3-server_linux_amd64-3.13.6.tar.bz2

tar -xjf teamspeak3-server_linux_amd64-3.13.6.tar.bz2

mv teamspeak3-server_linux_amd64 ts3

cp -R /ts3 /home

rm -fr ts3

touch /home/ts3/.ts3server_license_accepted

adduser ts3

cd /home

chown -R ts3 ts3

cd /home/ts3

chmod +x ts3server_startscript.sh

chmod +x ts3server

cd /

su ts3 -c '/home/ts3/./ts3server_startscript.sh start'
