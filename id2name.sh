#!/bin/bash
ls | grep "PCS" > gamelist.txt
while :
do
	firstline=$(head -n 1 gamelist.txt)
	if [ -z "$firstline" ]; then
	   	echo "[ End of gamelist ]"
		break;
	fi
	g=$(awk '/'$firstline'/' PSV_GAMES_STRIPPED.csv | cut -d, -f3)
	echo "$firstline -> $g"
	mkdir "$g"
    mv $firstline "$g"
	# delete the first line of gamelist.txt
	tail -n +2 gamelist.txt > temp.txt
	mv temp.txt gamelist.txt
	rm -fr temp.txt
done
# We dont need this anymore..
rm gamelist.txt
# Quick'n'Dirty Fix for trailing spaces in directory names..
rename 's/ *$//' *
echo "All done.. Enjoy!"


