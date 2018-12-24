#!/bin/sh

ffmpeg -ss $2 -i $1 -vframes 1 -q:v 2 $3
