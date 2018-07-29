#!/bin/bash

export LD_LIBRARY_PATH="/home/au5ton/Library/Plex/current/usr/lib/plexmediaserver"

# to see which sections you want to scan, use:
# ~/Library/Plex/current/usr/lib/plexmediaserver/Plex\ Media\ Scanner --list
PLEX_SECTIONS=( "1" "2" )

for i in "${PLEX_SECTIONS[@]}"
do
	$HOME/Library/Plex/current/usr/lib/plexmediaserver/Plex\ Media\ Scanner --scan --refresh --section $i;
done
