
#!/bin/bash

#script to check if input is an integer
#require exactly 2 arguments

if [ $# -ne 2 ]
then
    echo "Usage: `basename $0` num1 num2"
    exit 65
fi

#functio to check if a value is an integer
is_integer() {
    [[ "$1" =~ ^-?[0-9]+$ ]]
}

#validate first argument
if ! is_integer "$1"
then 
    echo "Error: $1 is not an integer."
    exit 66
fi

#validate second argument
if ! is_integer "$2"
then 
    echo "Error: $2 is not an integer."
    exit 67
fi

echo "Both arguments are integers: $1 and $2"