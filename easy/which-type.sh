#!bin/bash

#This script will check if the provided path leads to the file or the directory

if [[ -z $1 ]]; then
echo "Please specify path"
exit 1
elif [[ -f $1 ]]; then
echo "It is a file"
elif [[ -d $1 ]]; then
echo "It is a directory"
else
echo "It is something else"
fi