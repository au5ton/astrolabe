#!/usr/bin/env bash
mkdir ~/.config/ssl/
openssl genrsa -des3 -out ~/.config/ssl/rootCA.key 2048
openssl req -x509 -new -nodes -key ~/.config/ssl/rootCA.key -sha256 -days 1024 -out ~/.config/ssl/rootCA.pem
