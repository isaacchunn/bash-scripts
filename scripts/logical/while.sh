#!/usr/bin/bash

read -p "Enter your number: " num

#While the number is greater than 10
while [ $num -gt 10 ]; do
	echo $num
	num=$(( num - 1 ))
done
