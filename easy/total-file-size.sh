#!/bin/bash

#This script will sum all the files sizes

if [[ -z $1 ]]; then
echo "The argument field can't be empty"
exit 1
elif [[ -d "$1" ]]; then
sum=0
while read -r file; do
if [[ -f "$1"/"$file" ]]; then
size=$(stat -c%s "$1/$file")
((sum += size))
fi
done < <(ls "$1")
echo "Total size is: "$sum""
else
echo "No files in the directory specified"
fi