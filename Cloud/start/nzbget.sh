#!/bin/sh

# sonarr
tmux new -d -s nzbget '/home/au5ton/nzbget/nzbget -s'
#screen -dmS sonarr mono --debug ~/NzbDrone/NzbDrone.exe

# jackett
# screen -dmS jackett mono ~/Jackett/JackettConsole.exe -p 34341 -c libcurl
