#!/bin/bash

#HandBrakeCLI --preset "Normal" --input "$1" --output "$2" --use-opencl --encoder-preset slow
#HandBrakeCLI --preset "Fast 1080p30" --input "$1" --output "$2"
#HandBrakeCLI --preset "HQ 1080p30 Surround" --input "$1" --output "$2"
nice HandBrakeCLI --preset "HQ 1080p30 Surround" -e nvenc_h264 --input "$1" --output "$2"
touch "$2" -r "$1"
