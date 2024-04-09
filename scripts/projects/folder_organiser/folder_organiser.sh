#!/usr/bin/bash

# Author: Isaac Chun
# Date Created: 9/4/2024
# Last Modified: 9/4/2024
# Description: Use outpuit of an ls command to generate lsit of files in folder to organise

# Usage:
#./folder_organiser.sh

read -p "Which folder you want to organise?: " folder

while read filename; do
	case "$filename" in
		*.jpg|*.jpeg|*.png) subfolder="images";;
		*.doc|*.docx|*.txt|*.pdf) subfolder="documents";;
		*.xls|*.xlsx|*.csv) subfolder="spreadsheets";;
		*.sh) subfolder="scripts";;
		*.zip|*.tar|*.tar.gz|*.tar.bz2) subfolder="archives";;
		*.ppt|*.pptx) subfolder="presentations";;
		*.mp3) subfolder="audio";;
		*.mp4) subfolder="video";;
		*) subfolder=".";;
	esac
	#Then check if the directory exists
	if [ ! -d "$folder/$subfolder" ]; then
		mkdir "$folder/$subfolder"
	fi
	
	#Then move the file name into the folder
	mv "$filename" "$folder/$subfolder"

done < <(ls "$folder")
