#!/usr/bin/bash

#Read the urls and create an array of them
readarray -t urls < urls.txt

#Iterate and use the curl command to get the headers
for url in "${urls[@]}"; do
	#Break it into delimiter and select field 2
	webname=$(echo $url | cut -d "." -f 2)
	#Use curl and redirect it into url.txt
	curl --head "$url" > "$webname".txt
done
echo "Done!"
