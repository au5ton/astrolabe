#!/bin/sh
#0 4 * * * ~/transmission-autoremove.sh 'au5ton:trader-exiguous-corridor-moult'
#0 4 * * * ~/Cloud/transfers/backup_music.sh
#*/10 * * * * ~/Cloud/fix_mount.cron
# */30 * * * *
# alert
#@reboot ~/Cloud/ring_bell.sh 'mariner rebooted'

# plex


# transmission instances
~/Cloud/start/transmission-main.sh
~/Cloud/start/transmission-mov.sh
~/Cloud/start/transmission-tv.sh
~/Cloud/start/transmission-mm.sh
~/Cloud/start/transmission-fwx.sh
~/Cloud/start/transmission-free.sh
~/Cloud/start/transmission-book.sh

# other routines
~/Cloud/start/audioreaction.sh
~/Cloud/start/nginx.sh
~/Cloud/start/jackett.sh
~/Cloud/start/plexpy.sh
#@reboot	~/Cloud/start/radarr.sh
#@reboot	~/Cloud/start/roboruri.sh
~/Cloud/start/rtorrent.sh
~/Cloud/start/shadowsocks.sh
~/Cloud/start/sonarr.sh
~/Cloud/start/rslsync.sh
