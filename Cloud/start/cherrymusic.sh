#!/bin/sh

#screen -mS cherrymusic ~/cherrymusic/cherrymusic --setup --port 13203
tmux new -d -s cherrymusic '~/cherrymusic/cherrymusic --port 13203'


