#!/bin/sh

cd /home/au5ton
wget `curl --silent https://api.github.com/repos/Jackett/Jackett/releases/latest | awk '/browser_download_url/ && /Jackett.Binaries.Mono.tar.gz/ { print $2 }' | sed 's/"//g'`
tar xzvf Jackett*.tar.gz
rm Jackett*.tar.gz
