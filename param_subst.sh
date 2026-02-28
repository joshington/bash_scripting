

#!/bin/bash

: ${1?"Usage: $0 ARGUMENT"}
# Script exits here if command-line parameter absent,
#+ with following error message.
#
usage-message.sh: 1: Usage: usage-message.sh ARGUMENT

#variable length/substring removal
# => ${#var} - String length 
# => For an array, ${#array} - length of first element in the array.
# =. ${#*} and ${#@} - give the number of positional params
#array - ${#array[@]} - give the number of elements in the array

E_NO_ARGS=65

if [ $# -eq 0 ] #must have command-line args to demo script.
then 
    echo "Please invoke this script with one or more cmd-line args"
    exit $E_NO_ARGS
fi 


var01=abcdEFGH28ij
echo "var01 = ${var01}"
echo "Length of var01 = ${#var01}"
#embedding a space
var02="abcd EFGH28ij"
echo "var02 = ${var02}"
echo "Length of var02 = ${#var02}"

echo "NUmber of command-line args passed to script = ${#@}"
echo "Number of command-line args passed to script = ${#*}"


#===> ${var#Pattern}, ${var##Pattern} - remove from $var the shortest part
# of $Pattern that matches the front end of $var.

# ${var##Pattern} - remove from $var the longest prt of $Pattern that matches
#the front end of $var. 

strip_leading_zero ()
{
    return=${1#0}
}

strip_leading_zero2 () 
{
# Bash will interpret such numbers as octal values.
    shopt -s extglob
# Turn on extended globbing.
    local val=${1##+(0)} # Use local variable, longest matching series of 0's.
    shopt -u extglob
# Turn off extended globbing.
    _strip_leading_zero2=${val:-0}
# If input was 0, return 0 instead of "".
}

# => ${var%Pattern}, ${var%%Pattern}
# => ${var%Pattern} remove from $var the shortest part of $Pattern that matches
# the backend of $var.

#



exit 0