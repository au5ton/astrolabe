#!/bin/sh

echo UNMOUNT THE THINGS...
fusermount -u /home/au5ton/Cloud/local-sorted/
#sudo umount -l /home/plex/Cloud/Plex
echo DONE

echo REMOUNT THE THINGS...
export ENCFS6_CONFIG='/home/au5ton/Cloud/encfs6.xml' 
cat /home/au5ton/Cloud/.pass | encfs -S /home/au5ton/Cloud/.local-sorted /home/au5ton/Cloud/local-sorted
echo DONE
