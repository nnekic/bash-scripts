#!/bin/bash

#This script counts how many lines are in the file

if [[ -z $1 ]]; then
echo "Please specify the file path"
exit 1
elif [[ -f $1 ]]; then
echo "Number of lines: $(wc -l < "$1")"
else
echo "File doesn't exist!"
fi