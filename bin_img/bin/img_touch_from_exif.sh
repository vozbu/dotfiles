#!/bin/bash


for i in *; do
    exiv2 -T mv "$i"
done
