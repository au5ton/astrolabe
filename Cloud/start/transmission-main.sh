#!/bin/sh

# transmission
tmux new -d -s transmissiond-main "TRANSMISSION_WEB_HOME='$HOME/.combustion/combustion-release' transmission-daemon -f -g ~/.config/transmission-daemon"
