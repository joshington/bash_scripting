

#!/bin/bash
#Proper header for a bash script 

#cleanup, version 2
#run as root, of course

#insert code hereto print error message and exit if not root

LOG_DIR="/var/log"
#vARIABLES ARE BETTER than hard-coded values
cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp

echo "Log files cleaned up successfully."

exit 