#!/bin/sh

tmux new -d -s plexpyd 'source ~/virtualenv/bin/activate; cd ~/plexpy; python PlexPy.py --nolaunch -p 54375; ~/Cloud/ring_bell.sh plexpycrash; bash'

#cd ~/plexpy
#python PlexPy.py --nolaunch -p 54375
