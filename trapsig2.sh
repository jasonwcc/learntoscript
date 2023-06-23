#!/bin/bash
trap 'echo "Control-Z not available"
	echo "Core dumps not allowed"
	sleep 1' INT QUIT

while true
do

	sleep 1
	echo "the script is still runnning; `date +%T`"
done
