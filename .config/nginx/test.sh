#!/bin/bash

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# test configuration
/usr/sbin/nginx -c ~/.config/nginx/nginx.conf -t

if [ "$?" -eq "0" ]; then
	printf "[${GREEN}✓${NC}] No nginx configuration errors.\n"
else
	printf "[${RED}✗${NC}] See nginx configuration errors above.\n"
fi
