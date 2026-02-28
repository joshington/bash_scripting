
#!/bin/bash

# to check if am root

ROOT_UID=0 # ROOT hs $uid 0

if [ "$UID" -eq "$ROOT_UID" ] #WILL the real root please stand up?
then 
    echo "You are root."
else
    echo "You are just an ordinary user.but we love you regardless"
fi 

exit 0

ROOTUSER_NAME=root

username=` id -nu`
if [ "$username" = "$ROOTUSER_NAME"  ]
then
    echo "Rooty, toot. You are root."
else
    echo "You are just a regular fella."
fi 