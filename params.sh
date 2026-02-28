#!/bin/bash

#call this script with atleast 10 params.
# ./scriptname 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10

echo 

echo "The nameof this script is \"$0\"."
#adds ./ for current directory

echo "The first name of this script is \"$1\"."
#special variables $* and $a denote all the positional  
#parameters passed to a script or function.
# $* treats all the parameters as a single word,
# whereas $@ treats each parameter as

echo 
if [ -n "$1" ]  #testedd variable is quoted
then 
    echo "Parameter #1 is $1" #Need quotes to escape 
fi 

if [ -n "$2" ]
then
    echo "Parameter #2 is $2"
fi

if [ -n "$3" ]
then
    echo "Parameter #3 is $3"
fi

if [ -n "$4" ]
then
    echo "Parameter #4 is $4"
fi

echo "-----------------------------------"
echo "All the command-line parameters are: "$*""

if [ $# -lt "$MINPARAMS" ]
then
    echo "Not enough parameters entered."
    echo "This script needs at least $MINPARAMS command-line arguments!"
fi

echo 
exit 0