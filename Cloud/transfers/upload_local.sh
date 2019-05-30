#!/bin/bash

# acd_cli upload --max-connections 8 --overwrite 
# /home/au5ton/Cloud/.local-sorted/* /Plex

# rclone copy source:sourcepath dest:destpath

SESS_NAME="upload-$(date +'%I-%M%p_%F')"

tmux new -d -s $SESS_NAME 'SESS_NAME='${SESS_NAME}'; rclone copy --transfers 32 --size-only -v --stats 5s /home/au5ton/Cloud/.local-sorted tamu:migration/Plex; /home/au5ton/Cloud/ring_bell.sh ${SESS_NAME}" finished"'

