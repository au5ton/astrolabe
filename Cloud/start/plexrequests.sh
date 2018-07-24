#!/bin/sh

# plexrequests
pkill -f meteor
tmux new -d -s plexrequests 'cd ~/plexrequests-meteor; export ROOT_URL=http://127.0.0.1:17334/requests; ~/.meteor/meteor -p 17334; bash'

