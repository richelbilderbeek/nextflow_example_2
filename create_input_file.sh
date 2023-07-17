#!/bin/bash
#
# Creates or downloads an input file
#
if [ $# -eq 1 ] ; then
  input_filename="$1"
  echo "Use input filename from first command-line argument"
else
  input_filename="input.txt"
  echo "Use default input filename"
fi

echo "input_filename: ${input_filename}"

echo "Hello world" > "${input_filename}"
