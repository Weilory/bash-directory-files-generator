#!/bin/bash
echo enter a directory name:
read -r dirn
mkdir -p "$dirn"
filename='baf.txt'
n=1
while read -r line; do
	cd "$dirn" || exit
	touch "$line"
	n=$((n+1))
	cd ..
done < $filename
