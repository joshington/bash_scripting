


#!/bin/bash

#rename file exts
#to rename all *.gif files in working directory to *.jpg, rfe gif jpg

E_BADARGS=65

case $# in 
    0|1) # the vertical bar means "or" in this context.
    echo "Usage: `basename $0` old_file_suffix new_file_suffix"
    exit $E_BADARGS # If 0 or 1 arg then bail out.
    ;;
esac

for filename in *.$1
#traverse list of files ending with 1st argument
do 
    mv $filename ${filename%$1}$2
    #strip off part of filename matching 1st arg,
    #then append 2nd arg.
done

exit 0