#!/bin/sh

# transmission
tmux new -d -s transmissiond-fwx "TRANSMISSION_WEB_HOME='$HOME/.combustion/combustion-release' transmission-daemon -f -g ~/.config/transmission-daemon-fwx"
