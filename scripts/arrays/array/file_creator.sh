#!/usr/bin/bash

readarray -t files < files.txt

#For each file in our file array
for file in "${files[@]}"; do
	if [ -f "$file" ]; then
		echo "$file already exists."
	else
		touch "$file"
	fi
done
