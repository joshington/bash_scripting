#!/bin/bash
#==seeding the random variable

MAXCOUNT=25 #how many numbers to generate
SEED=

random_numbers ()
{
    local count = 0
    local number 
    while [ "$count" -lt "$MAXCOUNT" ]
    do 
        number=$RANDOM
        echo -n "$number "
        let "count++"
    done 
}

echo;  echo 

SEED=1
RANDOM=$SEED  #setting RANDOM seeds the random number generator.
echo "Random seed = $SEED"
random_numbers

RANDOM=$SEED #SAME SEEDfor RANDOM
echo; echo "Again, with same random seed..."
echo "Random seed = $SEED"
random_numbers #...reproduces the exact same number series


echo;  echo 

SEED=2
RANDOM=$SEED  #trying again, but with a diff seed....
echo "Random seed = $SEED"
random_numbers      #gives a diff number series

echo; echo 

#RANDOM=$$ seeds RANDOM from process id of script

SEED=$(head -1 /dev/urandom | od -N 1 | awk '{ print $2 }' | sed s/^0*//)
#seudo -random output fetched

RANDOM=$SEED 
echo "Random seed = $SEED"
random_numbers

echo; echo

exit 0