#!/bin/sh

tmux new -d -s rTorrent 'killall rtorrent; rtorrent'
#killall rtorrent\ main; screen -dmS rTorrent rtorrent
