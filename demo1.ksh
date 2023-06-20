#!/bin/bash
function getinput {
clear
echo "Current number is $number. Pls give me a new number"
read number
}

getinput

echo "morning calculation - `expr $number \* 100`"
sleep 5

getinput
echo "afternoon calculation - `expr $number \* 200`"
