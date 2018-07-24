#!/bin/sh

# sonarr
tmux new -d -s sonarr '/home/au5ton/bin/mono --debug ~/NzbDrone/NzbDrone.exe -c libcurl'
#screen -dmS sonarr mono --debug ~/NzbDrone/NzbDrone.exe

# jackett
# screen -dmS jackett mono ~/Jackett/JackettConsole.exe -p 34341 -c libcurl
