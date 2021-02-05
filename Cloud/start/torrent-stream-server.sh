#!/bin/sh

tmux new -d -s torrent-stream-server 'PORT=42081 npx torrent-stream-server serve'


