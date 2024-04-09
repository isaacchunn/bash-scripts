#!/usr/bin/bash

#Countdown from specified number provided by the user from number of minutes and seconds for timer

#Get all the options
while getopts "m:s:" opt; do
case "$opt" in
	m) minutes=$OPTARG;;
	s) seconds=$OPTARG;;
	\?);;
esac
done

#Calculate our total minutes and seconds
total_seconds=$(( minutes * 60 + seconds ))

#Decrement timer 
while [ $total_seconds -gt 0 ] ; do
	echo "Seconds Left:" $total_seconds
	#Decrement our seconds by 1
	total_seconds=$(( $total_seconds - 1 ))
	sleep 1s
done
echo "Time's Up!"
