
#!/bin/bash

# $TMOUT => if the $TMOUT envt variable is set to a non-zero value time
# then the shell prompt will time out after $timesecs.

TIMOUT=3 # prompt times out at 3 seccs

echo "What is your favourite song?"
echo "Quickly now, you only have $TMOUT secs to answer!"
read song 

if [ -z "$song" ]
then 
    song="(no answer)"
    #Default response
fi 
echo "Your favourite song is $song"