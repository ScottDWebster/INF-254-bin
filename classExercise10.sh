#!/bin/bash
# use predefined variables to access passed arguments
#echo arguments to the shell
echo $1 $2 $3 
#use $@ to print out all arguments at once
echo $@ # use $# variable to print out
# number of arguments passed to the bash script
echo “Number of arguments passed:” $#

