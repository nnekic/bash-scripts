#!/bin/bash

#This script is for listing files in the dir specified

if [[ -z $1 ]]; then
echo "Please specify the directory"
exit 1
elif [[ ! -d $1 ]]; then
echo "Path provided is not directory"
exit 1
else
for fajl in "$1"/*
do
if [[ -f $fajl ]]; then
echo "Listing files: $(basename "$fajl")"
fi
done
fi
