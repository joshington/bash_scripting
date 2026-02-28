

#!/bin/bash

TIMER_INTERRUPT=14
TIMERLIMIT=3 #3 secs in this instance
             #maybe set to a different value

PrintAnswer()
{
    if [ "$answer" = TIMEOUT ]
    then 
        echo $answer 
    else  #dont want to mix up the 2 instances
        echo "Your favorite veggie is $answer"
        kill $! #kills no-longer-needed Timeron func
                #running in background
                # $! is PID of last job running in background
    fi
}

TimerOn()
{
    sleep $TIMERLIMIT && kill -s 14 $$ &
    #waits 3 secs, then sends sigalarm to script
}

Int14Vector()
{
    answer="TIMEOUT"
    PrintAnswer
    exit $TIMER_INTERRUPT
}

trap Int14Vector $TIMER_INTERRUPT
#Timer interrupt (14) subverted for our purposes.

echo "What is your favorite vegetable "
TimerOn 
read answer
PrintAnswer

exit 0