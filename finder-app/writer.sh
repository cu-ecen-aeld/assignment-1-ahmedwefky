#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Insufficient number of arguments"
    exit 1
else
    mkdir -p $(dirname $1) 
    touch $1
    echo $2 > $1
    if [ -f "$1" ]; then    
        exit 0
    else
        echo "File cannot be created"
        exit 1
    fi
fi