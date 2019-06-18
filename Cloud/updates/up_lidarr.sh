#!/bin/sh

cd /home/au5ton
wget $(curl -s https://api.github.com/repos/Lidarr/Lidarr/releases | grep linux.tar.gz | grep browser_download_url | head -1 | cut -d \" -f 4)
tar xzvf Lidarr*.tar.gz
rm Lidarr*.tar.gz
