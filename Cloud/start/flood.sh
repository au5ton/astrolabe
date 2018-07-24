#!/bin/sh

tmux new -d -s flood 'source ~/Cloud/start/use_node.sh; cd ~/sandbox/flood/; npm start && exit; bash'


