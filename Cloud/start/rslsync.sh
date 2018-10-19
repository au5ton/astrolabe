#!/bin/sh

tmux new -d -s rslsync '~/rslsync/rslsync --config ~/.rslsync/rslsync.conf --nodaemon; bash'

#cd ~/plexpy
#python PlexPy.py --nolaunch -p 54375
