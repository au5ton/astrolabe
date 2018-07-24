#!/bin/sh

DECRYPT_NAME=$1

if [ -z "$DECRYPT_NAME" ]; then
	echo "DECRYPT_NAME is undefined, please provide it as an argument";
	exit 1;
else 
	echo "Provded file name is: \`"$DECRYPT_NAME"\`";
fi

export ENCFS6_CONFIG='/home/au5ton/Cloud/encfs6.xml'
encfsctl decode --extpass="cat /home/au5ton/Cloud/.pass" /home/au5ton/Cloud/.acd-sorted/migration/Plex "$DECRYPT_NAME"
