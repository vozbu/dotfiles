#!/bin/bash

# Создает gpx файл из mp4 видеофайла из регистратора

exiftool -p /usr/share/exiftool/fmt_files/gpx.fmt -ee -ext mp4 -w %f.gpx ${1}
