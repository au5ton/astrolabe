#!/bin/sh

# acd_cli upload --max-connections 8 --overwrite 
# /home/au5ton/Cloud/.local-sorted/* /Plex

# rclone copy source:sourcepath dest:destpath

SESS_NAME="copymovies-$(date +'%I-%M%p_%F')"

tmux new -d -s $SESS_NAME 'SESS_NAME='${SESS_NAME}'; rsync -ah --progress ~/myTorrents/Seeding/Movies/* ~/Cloud/local-sorted/Movies/; ~/Cloud/ring_bell.sh ${SESS_NAME}" finished"'

