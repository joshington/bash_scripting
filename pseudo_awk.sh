

#!/bin/bash

AWKSCRIPT=' { srand(); print rand() } '
# commands/params passed to awk

echo -n "Random number between 0 and 1 = "

echo | awk "$AWKSCRIPT"
#what happens if you leave out the 'echo'

exit 0