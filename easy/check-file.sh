#!/bin/bash

#This script checks if the file (first argument) exists or not.

if [[ -z $1 ]]; then
echo "Enter the file path!"
exit 1
elif [[ -f $1 ]]; then
echo "File exists"
else
echo "File does not exist"
fi