
#!/bin/bash

OPERATION=macptopbm
SUFFIX=pbm  #new filename suffix






if [ -n "$1" ]
then
    directory=$1 #if directory name given as script arg
else
    directory=$PWD  #otherwise use cwd
fi 
#ASSUMES ALL FILES IN THE target directory are macpaint image files


for file in $directory/*  #filename globbing
do 
    filename=${file%.*c} #strip ".mac" suffix off filename
    $OPERATION $file > "$filename.$SUFFIX"
    rm -f $file #delete original files after converting
    echo "$filename.$SUFFIX" #log what is happening to stdout
echo 

exit 0
