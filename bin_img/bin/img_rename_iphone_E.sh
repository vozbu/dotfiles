#!/bin/bash

ls IMG_E* | while read i; do mv "$i" `echo "$i" | sed -r 's/E//'`; done
