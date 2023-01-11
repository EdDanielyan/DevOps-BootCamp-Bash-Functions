#!/bin/bash

# Put your code here

#pow function

function pow() {
a=$1
b=$2
result=$((a**b))
echo "$result"
}

#date and some string

function print_log() {
DATE=$(date +"%Y-%m-%d %H:%M")
echo "$DATE $@"
}
