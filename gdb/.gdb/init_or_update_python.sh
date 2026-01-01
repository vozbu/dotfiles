#!/bin/bash

set -e

git clone --sparse --depth 1 --no-checkout https://github.com/gcc-mirror/gcc.git
cd gcc
git sparse-checkout init
git sparse-checkout set libstdc++-v3/python
git checkout master
cd ..
rm python.bak -rf
mv python python.bak
mv gcc/libstdc++-v3/python .
rm gcc -rf
