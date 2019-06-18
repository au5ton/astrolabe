#!/bin/zsh

rclone sync tamu:migration soot:whatbox --bwlimit=8.5M --transfers 4 --checkers 4 --stats 15s -v
