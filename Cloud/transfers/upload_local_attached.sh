#!/bin/bash

# acd_cli upload --max-connections 8 --overwrite 
# /home/au5ton/Cloud/.local-sorted/* /Plex

# rclone copy source:sourcepath dest:destpath

rclone copy --transfers 32 --size-only -v --stats 60s /home/au5ton/Cloud/.local-sorted soot:whatbox/Plex

