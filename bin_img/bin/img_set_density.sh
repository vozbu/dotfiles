#!/bin/bash

# first param - image name
# second param - density

if [ $# -lt 2 ]; then
    echo "Usage: $0 <img name> <img density>"
    exit 1
fi

convert -units PixelsPerInch "${1}" -density "${2}" "/tmp/${1}"
touch "/tmp/${1}" -r "${1}"
mv "/tmp/${1}" "${1}"
