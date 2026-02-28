
#!/bin/bash
#this script converts *all* the files in the cwd
#modify it to work *only * on files with a ".mac" suffix

#assumes imagemaick installed

INFMT=png #can be tif, jpg, gif, etc
OUTFMT=pdf  #can be tif, jpg, pdf, etc

for pic in *"$INFMT"
do 
    p2=$(ls "$pic" | sed -e s/\.$INFMT//)
    #echo $p2
    convert "$pic" $p2.$OUTFMT
    done 
exit $?