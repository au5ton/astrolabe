#!/bin/sh

# transmission
tmux new -d -s transmissiond-mm 'transmission-daemon -f -g ~/.config/transmission-daemon-mm'
