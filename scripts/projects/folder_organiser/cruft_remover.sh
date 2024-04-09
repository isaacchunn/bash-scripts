#!/usr/bin/bash

# Author: Isaac Chun
# Date Created: 9/4/2024
# Last Modified: 9/4/2024
# Description: Utility file to keep system clear of unnecessary files and delete those that has not been modified for a certain period of time

# Usage:
./cruft_remover.sh

#Read the foldername and the amount of days unmodified
read -p "What is the foldername?" foldername
read -p "How many days?" days

readarray -t files < <(find $foldername -maxdepth 1 -type f -mtime "+$days"

#Loop through each file and then delete
for file in ${files[@]}"; do
	rm -i file
done
