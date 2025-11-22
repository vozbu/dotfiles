#!/bin/bash

for i in *.tiff; do
    if [ -e  "${i%tiff}jpg" ]; then
        echo "File ${i%tiff}jpg already exists, abort"
        exit 1
    fi
    convert "$i" "${i%tiff}jpg"
    touch "${i%tiff}jpg" -r "$i"
done
