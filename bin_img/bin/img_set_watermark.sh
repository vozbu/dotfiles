#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 <filename> <text> <text> <text>"
    exit 1
fi

infile="$1"
extension="${infile##*.}"
filename="${infile%.*}"
outfile="${filename}_stamped.${extension}"
shift
date=`LANG=ru_RU.UTF-8 date "+%F"`
text="$@ $date"
# you can list available fonts with command `magick -list font`
font="Courier"
font="Noto Sans"
font="Hack-Regular"

pointsize=60

magick "$infile" xc:none -gravity Center -fill "rgba(50%,50%,50%,0.10)" -weight Bolder -stroke white \
    -font "$font" -pointsize "$pointsize" -encoding 'UTF-8' -draw "rotate -45 text 0,0 '${text}'" "${outfile}"
