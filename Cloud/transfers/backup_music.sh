#!/bin/sh

# acd_cli upload --max-connections 8 --overwrite 
# /home/au5ton/Cloud/.local-sorted/* /Plex

# rclone copy source:sourcepath dest:destpath

SESS_NAME="backupmusic-$(date +'%I-%M%p_%F')"

tmux new -d -s $SESS_NAME 'SESS_NAME='${SESS_NAME}'; cd ~/Cloud/util/; ./upload_music.sh; ./ring_bell.sh ${SESS_NAME}" finished"'
#'rclone copy --transfers 32 --size-only -v /home/au5ton/Cloud/.local-sorted tamu:migration/Plex'
#/home/au5ton/Cloud/ring_bell.sh "$(echo $SESS_NAME) finished"
