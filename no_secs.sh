
#!/bin/bash

TIME_LIMIT=10
INTERVAL=1

echo 
echo "HIT Control-C to exit before $TIME_LIMIT seconds."
echo 


while [ "$SECONDS" -le "$TIME_LIMIT"  ]
do  #$SECONDS is an internal shell variable
    if  [ "$SECONDS"  -eq 1 ]
    then 
        units=second
    else
        units=seconds
    fi 
    echo "This scrit has been running $SECONDS $units."
    #on a slow or overbudened machine, the script may skip a count
    #every once in a while.
    sleep $INTERVAL
done 

echo -e "\a" #Beep

exit 0