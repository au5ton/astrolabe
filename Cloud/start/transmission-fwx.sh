#!/bin/sh

# transmission
tmux new -d -s transmissiond-fwx "transmission-daemon -f -g ~/.config/transmission-daemon-fwx"
