#!/bin/sh

# mono ~/duplicati/Duplicati.CommandLine.exe

PASS=`cat /home/au5ton/Cloud/.pass`
DRIVEAUTH=`cat /home/au5ton/Cloud/.driveauth`
TMP=/home/au5ton/.tmp

ARGS="--authid=$DRIVEAUTH --passphrase=$PASS --tempdir=$TMP"
ARGS="$ARGS --upload-verification-file=true"
#ARGS="$ARGS --throttle-upload=10000kb"
ARGS="$ARGS --threshold=0 --symlink-policy=follow"

mono ~/duplicati/Duplicati.CommandLine.exe backup googledrive://MusicBackup ~/MusicBackup/ $ARGS


#printf "Uploading MatchedMusic...\n"
#rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/myTorrents/Seeding/MatchedMusic tamu:migration/MatchedMusic
#printf "Uploading OutsourcedMusic...\n"
#rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/OutsourcedMusic tamu:migration/OutsourcedMusic
#printf "Uploading MusicFreeleech...\n"
#rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/myTorrents/Seeding/MusicFreeleech tamu:migration/MusicFreeleech
#printf "Uploading FWX...\n"
#rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/myTorrents/Seeding/FWX tamu:migration/FWX
#printf "Uploading Books...\n"
#rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/myTorrents/Seeding/Books tamu:migration/Books
