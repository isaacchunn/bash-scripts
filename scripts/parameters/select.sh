#!/usr/bin/bash

PS3="What is the day of the week?"

select day in mon tue wed thu fri sat sun;
do
echo "The day of the week i is $day"
break
done #Close our do
