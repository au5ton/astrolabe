#!/bin/sh

# sonarr
tmux new -d -s radarr '/home/au5ton/bin/mono --debug ~/Radarr/Radarr.exe -c libcurl'
#screen -dmS radarr mono --debug ~/Radarr/Radarr.exe -c libcurl

# jackett
# screen -dmS jackett mono ~/Jackett/JackettConsole.exe -p 34341 -c libcurl
