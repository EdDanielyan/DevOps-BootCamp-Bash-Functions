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
echo "[$DATE] $@"
}

#shortest

function shortest() {
  min_length=${#1}
  min_string=$1
  for arg in "$@"; do
    if [ ${#arg} -lt $min_length ]; then
      min_length=${#arg}
      min_string=$arg
    fi
  done

  if [ $# -gt 2 ]; then
    for arg in "$@"; do
      echo $arg
    done | grep -E "^.{$min_length}$"
  else
    echo $min_string
  fi
}
