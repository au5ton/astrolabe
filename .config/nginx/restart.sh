#!/bin/sh

printf 'Killing nginx...\n'
killall nginx
printf 'DONE\n'

printf 'Executing start script...\n'
~/.config/nginx/start
printf 'DONE\n'
