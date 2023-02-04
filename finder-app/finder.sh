#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Insufficient number of arguments"
    exit 1
elif [ ! -d "$1" ]; then
    echo "$1 does not represent a directory on the file system"
    exit 1
else 
    echo The number of files are $(grep -rl $2 $1 | wc -l) and the number of matching lines are $(grep -rs $2 $1 | wc -l)
    exit 0
fi