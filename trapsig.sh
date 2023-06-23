#!/bin/bash
# Script name : trapsig.sh

trap 'echo "Control-C cannot terminate this script."' INT
trap 'echo "Control-\ cannot coredumps this script."' QUIT
trap 'echo "Control-Z cannot suspend this script."' TSTP

echo  "Enter any string (type 'dough' to exit)."
while (( 1 ))
do
	echo "Rolling..."
	read string
	
	if [[ "$string" = "dough" ]]
	then
		break
	elif [[ "$string" = "ori" ]]
	then
		trap - INT TSTP
	fi
done
echo "exiting normally"
