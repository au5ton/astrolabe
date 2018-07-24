#!/bin/sh

# transmission
tmux new -d -s transmissiond-tv 'transmission-daemon -f -g ~/.config/transmission-daemon-tv'
