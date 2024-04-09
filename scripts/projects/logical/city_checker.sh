#!/usr/bin/bash

select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do
	case "$city" in
		Tokyo)
			country="Japan" ;;
		London|Manchester)
			country="United Kingdom";;
		#Do the rest of cases... just a test script 
	esac
echo "$city is in $country"
break
done
