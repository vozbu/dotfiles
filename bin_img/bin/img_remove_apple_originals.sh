#!/bin/bash

# If all folder moves to trash .HEIC-file of .heic-.HEIC pair.

for i in *.heic; do
    FILENAME=`basename -s .heic "$i"`
    echo $FILENAME
done
