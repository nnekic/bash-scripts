#!/bin/bash

#This script will count the number of directories

if [[ -z $1 ]]; then
echo "Please specify the path!"
exit 1
elif [[ -d $1 ]]; then
    counter=0
    while read dir; do
    if [[ -d "$1"/"$dir" ]]; then
    ((counter++))
    fi
    done < <(ls "$1")
    echo "Number of directories: "$counter""
else
    echo "Directory does not exist"
fi
