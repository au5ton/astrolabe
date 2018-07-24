#!/bin/sh

# transmission
tmux new -d -s transmissiond-book 'transmission-daemon -f -g ~/.config/transmission-daemon-book'
