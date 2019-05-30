#!/bin/sh

killall php-fpm; /usr/lib64/php7.2/bin/php-fpm --fpm-config ~/.config/php-fpm/conf
killall nginx; ~/.config/nginx/start.sh
