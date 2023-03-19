#!/bin/bash
#
# * Input: a file called 'input.txt'
# * Output: a file called 'output'
#
cat input.txt | toilet | cowsay > result.txt
