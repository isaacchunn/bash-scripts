#!/usr/bin/bash

# Author: Isaac Chun
# Date Created: 9/4/2024
# Last Modified: 9/4/2024
# Description: Presents users a menu where they can choose the two scripts to run

# Usage:
#./toolkit.s

PS3="What script do you want to run?"
select opt in cruft_remover folder_organiser 
do
	$PWD/"$opt.sh"
break
done




