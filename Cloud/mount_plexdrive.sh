#!/bin/sh

echo UNMOUNT THE THINGS...
fusermount -u /home/au5ton/Cloud/Plex
fusermount -u /home/au5ton/Cloud/.acd-sorted
echo DONE

echo REMOUNT THE THINGS...
#tmux new -d -s plexmnt 'export TMPDIR=/home/au5ton/.tmp; plexdrive /home/au5ton/Cloud/.acd-sorted -v3; exit'
tmux new -d -s plexmnt 'export TMPDIR=/home/au5ton/.tmp; plexdrive mount -v 3 --chunk-check-threads=16 --chunk-load-threads=16 --chunk-load-ahead=16 --max-chunks=256 /home/au5ton/Cloud/.acd-sorted; exit'

counter=0
while [ ! -d /home/au5ton/Cloud/.acd-sorted/migration/Plex ]
do
	echo `date`" acdmnt not ready yet";
	sleep 2;
	counter=$((counter+2));
	# wait 120 seconds
	if [[ "$counter" -gt 120 ]]; then
		$HOME/Cloud/ring_bell.sh 'mount_plexdrive.sh timed out' && exit 1;
	fi
done

export ENCFS6_CONFIG='/home/au5ton/Cloud/encfs6.xml'
cat /home/au5ton/Cloud/.pass | encfs -S /home/au5ton/Cloud/.acd-sorted/migration/Plex /home/au5ton/Cloud/Plex
echo DONE
