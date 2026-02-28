
#!/bin/bash

#gcd.sh: greatest common divisor gcd of 2 integers
# is the largest integer that divides both numbers without leaving a remainder.

#euclid's algorithm uses successive division

ARGS=2
E_BADARGS=65

if [ $# -ne "$ARGS" ]
then
    echo "Usage: `basename $0` num1 num2"
    exit $E_BADARGS
fi

gcd ()
{
    dividend=$1
    divisor=$2

    while [ $divisor -ne 0 ]
    do
        remainder=$(( dividend % divisor ))
        dividend=$divisor
        divisor=$remainder
    done

    echo "The greatest common divisor is: $dividend"
}

gcd $1 $2