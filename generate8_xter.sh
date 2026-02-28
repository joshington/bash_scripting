

#!/bin/bash

if [ -n "$1" ] #if cmd line arg present,
then 
    str0="$1"
else
    str0="$$"
fi 

POS=2 #start from position 2 in the string
LEN=8  #extract 8 xters

str1=$( echo "$str0" | md5sum | md5sum )
#doubly cramble by piping and repiping to md5sum
randstring="${str1:$POS:$LEN}"
echo "$randstring"

echo ${*:2} #echoes second and following positional params
echo ${@:2} #same as above

echo ${*:2:3} #echoes 3 positional params, starting at second


stringZ=abcABC123ABCabc
echo `expr substr $stringZ 1 2`
echo `expr "$stringZ" : '\(.[b-c]*[A-Z]..[0-9]\)'`

echo `expr match "$stringZ" '.*\([A-C][A-C][A-C][a-c]*\)' `
echo `expr "$stringZ"  : '.*\(......\)'`



#substring removal
${string#substring} #deletes shortestmatch of $substring from font of $string
${string##substring} #deletes longest match of $substring from font of $string

echo ${stringZ#a*C}
#strip out shortest match btn 'a'and 'C'

echo ${stringZ##a*C} #abc
#strip out longest match btn 'a' and 'C'.

#you can parameterize the substrings
X='a*C'
echo ${stringZ#$X} #123ABCabc
echo ${stringZ##$X} #abc

SUFF=TXT
suff=txt

for i in $(ls *.$SUFF)
do 
    mv -f $i ${i%.$SUFF}.$suff 
    #leave unchanged everyhtng *except* the shortes pattern match
done 


echo ${stringZ%b*c}
#strip out shortes match btn 'b' and 'c' from back of $stringZ
echo ${stringZ%%b*c} #a
#strip out longest match btn 'b' and 'c' from back of $stringZ







exit $?
