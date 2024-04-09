#!/usr/bin/bash

#Create our read while loop
while read line; do
	echo $line
	mkdir "$line"
done < "$1"
