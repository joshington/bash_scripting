
#!/bin/bash
#invoke this script with several args, such as "one two three"

E_BADARGS=85

if [ ! -n "$1" ]
then 
    echo "Usage: `basename $0` argument1 argument2 etc."
    exit $E_BADARGS
fi 

echo 

index=1

echo "Listing args with \"\$*\":"
for arg in "$*" #Doesnt work properly if "&*" isnt quoted
do 
    echo "Arg #$index = $arg"
    let "index+=1"
done   #$* sees all args as single word
echo "Entire arg list seen as single word"

echo 

index=1

echo "Listing args with \"\$@\":"
for arg in "$@"
do 
    echo "Arg #$index = $arg"
    let "index+=1"
done  #$a sees args as separate words
echo "Arg list seen as separate words"

echo 

index=1 

echo "Listing args with \$* (unquoted):"
for arg in $*
do 
    echo "Arg #$index = $arg"
    let "index+=1"
done 
echo "Arg list seen as separate words"
exit 0