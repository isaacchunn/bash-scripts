#!/usr/bin/bash

a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)

#Check duplicates
if [ $a = $b ] || [ $a = $c ]; then
	rm file2.txt file3.txt
else
	echo "Files do not match"
fi
