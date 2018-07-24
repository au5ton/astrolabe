#!/bin/sh

# transmission
tmux new -d -s transmissiond-mov 'transmission-daemon -f -g ~/.config/transmission-daemon-mov'
