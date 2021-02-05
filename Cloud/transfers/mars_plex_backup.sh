#!/bin/sh

echo "Making backup of Plex application data"

FILE_NAME="mars-$(date +'%F_%I-%M%p')"

tmux new -d -s mars_plex_backup 'FILE_NAME='${FILE_NAME}'; /usr/bin/7z a -l /home/au5ton/${FILE_NAME}.7z ~/Library; ~/Cloud/ring_bell.sh "Backup is done! "${FILE_NAME}".7z"'
