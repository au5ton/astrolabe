#!/bin/sh

# https://stackoverflow.com/a/20456797
function dir_empty() {
  target=$1
  if find "$target" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
    return 1; # dir is empty
  else
    return 0; # dir isnt empty
  fi
}

# if dir_empty() returns 1
if dir_empty $HOME/Cloud/Plex; then
  $HOME/Cloud/ring_bell.sh 'PlexMNT broken.';
  $HOME/Cloud/disconnect.sh;
  tmux kill-session -t 'plexmnt';
  $HOME/Cloud//disconnect.sh;
  $HOME/Cloud/mount_plexdrive.sh && $HOME/Cloud//ring_bell.sh 'Plexdrive remounted' && $HOME/Cloud/util/plex_rescan.sh;
fi
