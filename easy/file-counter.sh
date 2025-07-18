#!/bin/bash

#This script counts files in the directory

if [[ -z $1 ]]; then
echo "Please specify directory!"
exit 1
elif [[ -d $1 ]]; then
 counter=0
 while read file; do
 if [[ -f "$1"/"$file" ]]; then
 ((counter++))
 fi
 done < <(ls "$1")
 echo "Number of files: $counter"
 else
 echo "Directory doesn't exist"
 fi