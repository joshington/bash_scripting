
#!/bin/bash

OFILEPREF=${1%%ra} #strip off the "ra" suffix
OFILESUFF=wav      #suffix for wav file.
OUTFILE="$OFILEPREF""$OFILESUFF"
E_NOARGS=85

if [ -z "$1" ] #must specify a filename to convert.
then 
    echo "Usage: `basename $0` [filename]"
    exit $E_NOARGS
fi
mplayer "$1" -ao pcm:file=$OUTFILE
oggenc "$OUTFILE" #CORRECT file extension automatically added by oggenc

rm "$OUTFILE" #delete intermediate *.wav file.

exit $?
