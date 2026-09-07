#!/bin/bash

# Removed GPS info from all images in current directory (add `-r` for recursive).

exiftool -gps:all= .
