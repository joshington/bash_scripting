
#!/bin/bash

: ${HOSTNAME?} ${USER?}  ${HOME?} ${MAIL}
   echo
   echo "Name of machine is $HOSTNAME."
   echo "You are  $USER."
   echo "Your home directory is $HOME."
   echo "Your mail INBOX is loated in $MAIL"