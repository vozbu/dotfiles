#!/bin/bash

ls IMG_E* | sed -r 's/E//' | xargs trash.sh
