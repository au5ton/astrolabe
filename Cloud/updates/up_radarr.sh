#!/bin/sh

cd /home/au5ton
wget $(curl -s https://api.github.com/repos/Radarr/Radarr/releases | grep linux.tar.gz | grep browser_download_url | head -1 | cut -d \" -f 4)
tar xzvf Radarr*.tar.gz
rm Radarr*.tar.gz
