#!/bin/bash

exiftool '-FileModifyDate<CreateDate' *.mov
exiftool '-FileModifyDate+=3' *.mov
