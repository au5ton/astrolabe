#!/bin/sh

# from: https://stackoverflow.com/questions/31302790/finding-corresponding-encrypted-file-on-encfs

# how to use:
# 1) start typing the execution for this script
# 2) use autofill (tab) to get the path (~/Cloud/Plex/ etc)
# 3) once you have the exact folder/file you want, delete "Plex/" and everything before it for the argument
# 4) root folder should return something that begins with: SOSQ, IPHI, HCW4, YLFL, or DJ3D

DECRYPT_NAME=$1

if [ -z "$DECRYPT_NAME" ]; then
	echo "DECRYPT_NAME is undefined, please provide it as an argument";
	exit 1;
else 
	echo "Provded file name is: \`"$DECRYPT_NAME"\`";
fi

export ENCFS6_CONFIG='/home/au5ton/Cloud/encfs6.xml'
encfsctl decode --extpass="cat /home/au5ton/Cloud/.pass" /home/au5ton/Cloud/Plex "$DECRYPT_NAME"
