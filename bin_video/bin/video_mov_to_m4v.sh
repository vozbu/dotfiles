#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 file.mov file.m4v"
    exit 1
fi

ffmpeg -i "$1" "$2"
touch "$2" -r "$1"
