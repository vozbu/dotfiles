#!/bin/bash

# Конвертирует указанный первым параметром PDF-файл в JPG в высоком разрешении.

convert -verbose -density 150 -trim 2025.03.13\ "$1" -quality 100 -flatten-sharpen 0x1.0 "$1.jpg"
