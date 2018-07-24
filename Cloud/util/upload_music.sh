#!/bin/sh

printf "Uploading MatchedMusic...\n"
rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/myTorrents/Seeding/MatchedMusic tamu:migration/MatchedMusic
printf "Uploading OutsourcedMusic...\n"
rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/OutsourcedMusic tamu:migration/OutsourcedMusic
printf "Uploading MusicFreeleech...\n"
rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/myTorrents/Seeding/MusicFreeleech tamu:migration/MusicFreeleech
printf "Uploading FWX...\n"
rclone copy --checkers 2 --transfers 2 --size-only -v /home/au5ton/myTorrents/Seeding/FWX tamu:migration/FWX
