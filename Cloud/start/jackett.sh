#!/bin/sh

# jackett
tmux new -d -s jackett '/home/au5ton/bin/mono ~/Jackett/JackettConsole.exe -p 34342; bash'
#screen -dmS jackett mono ~/Jackett/JackettConsole.exe -p 34341 -c libcurl
