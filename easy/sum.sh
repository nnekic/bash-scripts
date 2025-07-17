#!/bin/bash

#This script sums the 2 digits provided as the arguments

if [[ -z $1 ]] || [[ -z $2 ]]; then
echo "You must enter 2 digits!"
exit 1
else
sum=$(( $1 + $2 ))
echo "Sum is $sum"
fi