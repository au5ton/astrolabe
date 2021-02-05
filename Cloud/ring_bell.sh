#!/bin/bash


message=$1
BELL_RINGER_TOKEN=$(cat /home/au5ton/Cloud/.bottoken)

#if [-z "$1"]; then
#	message='not specified';
#fi

curl --data-urlencode "chat_id=-1001284538458" --data-urlencode "text=mariner.whatbox.ca: ${message}" "https://api.telegram.org/bot${BELL_RINGER_TOKEN}/sendMessage"
