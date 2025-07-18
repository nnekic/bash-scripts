#!/bin/bash

#This script will count lines in the file

if [[ -z $1 ]]; then
echo "Please specify file path"
exit 1
elif [[ -f $1 ]]; then
number=1
while read line; do
echo "Line $number: $line"
((number++))
done < "$1"
else
echo "File doesn't exist"
fi