#!/bin/sh

tmux new -d -s peerflix 'PORT=9999 HTTP_AUTH="root:spaghetti" peerflix-server'


