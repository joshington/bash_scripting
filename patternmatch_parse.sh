

#!/bin/bash

var1=abcd-1234-defg 
echo "var1 = $var1"

t=${var1#*-*}
echo "var1 (with everything, upto and including first - stripped out) = $t"

t=${var1##*-*}
echo "If var1 contains a \"-\", then var1 = $var1, and t = $t"

t=${var1%*-*}
echo "var1 (with everything, from last - onwards stripped out) = $t"

echo

#======
path_name=/home/punchu/ideas/thoughts.for.today
echo "path_name = $path_name"
t=${path_name##/*/}
echo "path_name, stripped of prefixes = $t"
#same effect as t=`basename $path_name` in this particular case.
#t=${path_name%/}; t=${t##*/} is a more general soln
#but still fails sometimes

t=${path_name%/*.*}
#same effect as t=`dirname $path_name`
echo "path_name, stripped of suffixes = $t"

echo
t=${path_name:11}
echo "$path_name, with first 11 chars stripped off =$t"
t=${path_name:11:5}
echo