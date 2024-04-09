#!/usr/bin/bash

#Run through and save the line into line
while read line; do
	echo "$line"
done < <(ls $HOME) #Tell the while loop to read the file of first positional parameter
