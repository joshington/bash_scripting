
#!/bin/bash

#script modelsBrownian motion

PASSES=500 #number of particle interactions / marbles
ROWS=10    #number of collisions
RANGE=3    #0-2 output range from $RANDOM
POS=0      #Left/right position
RANDOM=$$   #seeds the random number generator from PID of script

declare -a slots  #array holding cumultive results of passes
NUMSLOTS=21 #numbr of slots at bottom of board

Initialize_Slots () { #zero out all elements of the array.
    for i in $( seq $NUMSLOTS)
    do 
        Slots[$i]=0
    done 
    echo #blank line at beginnig of run

}

Show_Slots () {
    echo; echo
    echo -n " "
    for i in $( seq $NUMSLOTS ) #pretty-print array elements
    do
        printf "%3d" ${Slots[$i]} # Allot 3 spaces per result.
    done 

    echo #row of slots:
}

Move () {
    Move=$RANDOM 
    let "Move %= RANGE"
    case "$Move" in 
        0 ) ;;  #do nothing stay in place.
        
    esac
}