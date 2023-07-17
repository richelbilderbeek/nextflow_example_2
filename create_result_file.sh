#!/bin/bash
#
# * Input: a file called 'input.txt'
# * Output: a file called 'output'
#

if [ $# -eq 1 ] ; then
  input_filename="$1"
  echo "Use input filename from first command-line argument"
else
  input_filename="input.txt"
  echo "Use default input filename"
fi

echo "input_filename: ${input_filename}"

if [ ! -e "$input_filename" ]; then 
  echo "ERROR: input_filename '${input_filename}' not found. Quitting..."
  exit 1
fi


cat $input_filename | toilet | cowsay > result.txt
