#!/bin/sh

# jackett (mono)
# tmux new -d -s jackett 'mono ~/Jackett.Mono/JackettConsole.exe -p 34343; bash'

# jackett (standalone)
tmux new -d -s jackett '~/Jackett.Standalone/jackett -p 34343; bash'
