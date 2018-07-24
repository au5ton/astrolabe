#!/bin/sh

# transmission
tmux new -d -s transmissiond-free 'transmission-daemon -f -g ~/.config/transmission-daemon-free'
