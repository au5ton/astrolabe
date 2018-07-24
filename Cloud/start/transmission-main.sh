#!/bin/sh

# transmission
tmux new -d -s transmissiond-main 'transmission-daemon -f -g ~/.config/transmission-daemon'
