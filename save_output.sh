
#!/bin/bash
# rpm-check.sh

# Queries an rpm file for description, listing, and whether it can
#installed.

SUCCESS=0
E_NOARGS=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` rpm-file"
    exit $E_NOARGS
fi

{
    echo
    echo "Archive Description:"
    rpm  -qpi $1  #Query description.
    echo 
    echo "Archive Listing:"
    rpm  -qpl $1  #Query listing.
    echo
    rpm -i --test $1  #Test whether it can be installed.
    if [ "$?" -eq $SUCCESS ]
    then
        echo "The $1 package can be installed."
    else
        echo "The $1 package cannot be installed."
    fi
    echo        #End code block.
} > "$1.test"   #redirects output of everything in block to file

echo "Results of rpm test in file $1.test"
#see rpm man page for explanation of options:
exit 0

{} #placeholder for text, used for xargs -i replaces strings option.
#the {} double curly brackets are a placeholder for output text
ls  . | xargs -i -t cp ./{} $1
# ls . => lists all files and directories in the current directory
# the output is sent (piped) to the next command
# | => the pipe sends the output of ls as input to xargs.
# xargs -i -t => takes input line by line and builds commands from it.
# -i => replaces {} with each filename
# {} is aplaceholder
# -t => prints each command before executing it(good for debugging)

#====cp ./{} $1
#for each file found by ls, this runs;
# cp ./filename $1
# ./{} => the current file
# $1 => first argument passed to the script

#this is better => cp ./* "$1"


