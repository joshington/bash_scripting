

#!/bin/bash
#inserts a blank line betn paragraphs of a single-spaced textfile.

MINLEN=60


while read line #for as many lines as the input file has 
do 
    echo "$line" #output lineitself
    len=${#line}
    if [[ "$len" -lt "$MINLEN" && "$line" =~ [*{\.}]]$ ]]
    fi
done

exit