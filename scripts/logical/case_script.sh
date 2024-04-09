#!/usr/bin/bash

read -p "Please enter a number: " number 
#case of the number and check it against multiple cases
case "$number" in
	[0-9]) echo "You have entered a single digit number";;
	[0-9][0-9]) echo "You have entered a two digit number";;
	[0-9][0-9][0-9]) echo "You have entered a three digit number";;
	*) echo "You have entered a number that is more than three digits";; #Default case
esac


