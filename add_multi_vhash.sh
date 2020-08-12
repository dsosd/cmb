#!/bin/bash

for file in $1; do
	./add_vhash.sh "$file" "${@: -1}"
done
