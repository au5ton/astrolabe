#!/bin/bash
SERVER="56138 --auth "$1

MOVEDIR=/media/downloads/completed

TORRENTLIST=`transmission-remote $SERVER --list | sed -e '1d;$d;s/^ *//' | cut -f1 -d' '`

for TORRENTID in $TORRENTLIST
do
        TORRENTID=`echo "$TORRENTID" | sed 's:*::'`

        INFO=`transmission-remote $SERVER --torrent $TORRENTID --info`

        NAME=`echo "$INFO" | grep "Name: *"`
        DL_COMPLETED=`echo "$INFO" | grep "Percent Done: 100%"`
        STATE_STOPPED=`echo "$INFO" | grep "State: Stopped\|Finished\|Idle"`

        if [ "$DL_COMPLETED" != "" ] && [ "$STATE_STOPPED" != "" ]; then
                echo "Torrent $TORRENTID is in $STATE_STOPPED"
                echo "$NAME"
                #echo "Moving downloaded file(s) to $MOVEDIR"
                #transmission-remote --torrent $TORRENTID --move $MOVEDIR
                echo "Removing torrent from list"
                transmission-remote $SERVER --torrent $TORRENTID --remove-and-delete
        fi
done
