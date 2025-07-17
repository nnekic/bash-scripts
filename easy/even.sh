#!/bin/bash

#This script is for checking if the number is even or odd

if [[ -z $1 ]]; then
echo "Please enter a number"
exit 1
elif (($1 % 2 == 0)); then
echo "Even number"
else
echo "Odd number"
fi


