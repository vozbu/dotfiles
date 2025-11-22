#!/bin/bash

# Сначала пишем выходной файл, потом входные.

gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$@"
