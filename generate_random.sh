
#!/bin/bash

# $RANDOM returns a different random integer at each invocation
#Nominal range: 0 - 32767 ()

MAXCOUNT=10
count=1

echo 
echo "$MAXCOUNT random numbers:"
echo "-----------"
while [ "$count" -le $MAXCOUNT ] #generate 10 ($MAXOUNT) random integers.
do
    number=$RANDOM
    echo $number 
    let "count += 1" #Increment count.
done 
echo "---------------"

RANGE=500

ECHO 

number=$RANDOM
let "number %= $RANGE"

echo "Random number less than $RANGE --- $number"
echo 


FLOOR=200

number=0 #initialize
while [ "$number" -le $FLOOR ]
do
    number=$RANDOM 
done
echo "Random number greater than $FLOOR -- $number"
echo 