#!/bin/bash

rm curr_hashes
rm -r build

if [[ -f CMakeFiles/main.cmake.temp ]]; then
	cmake . >/dev/null 2>&1
	mv CMakeFiles/main.cmake.temp CMakeFiles/main.cmake
fi

if [[ "$#" == 0 ]]; then
	#default to permissive mode
	VHASH_MODE="permissive"
elif [[ "$#" -ge 1 ]]; then
	VHASH_MODE="$1"
fi

cmake . -DVHASH_MODE="$VHASH_MODE" && make -j12
sha256sum build/bin/output_exec
