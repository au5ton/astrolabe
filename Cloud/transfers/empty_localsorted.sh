#!/bin/sh

find "$HOME/Cloud/local-sorted/" -type f -delete -exec echo DELETE {} \;
