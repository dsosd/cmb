#!/bin/bash

mkdir -p CMakeFiles
echo "auto template_null.cmb" >CMakeFiles/main.cmb

python3 parse_cmb.py

cp CMakeFiles/main.cmake CMakeFiles/main.cmake.temp
