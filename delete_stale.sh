


#!/bin/bash

E_WRONG_DIRECTORY=85

clear #Clear the screen

TargetDirectory=/home/GreatAfricanNovel

cd $TargetDirectory
echo "Deleting stale files in $TargetDirectory."

if [ "$PWD" != "$TargetDirectory" ]
then  #keep from wiping out wrong directory by accident
    echo "Error: Wrong directory. Exiting."
    exit $E_WRONG_DIRECTORY
fi


rm -rf *
rm .[A-Za-z0-9]* #delete dotfiles
#rm -rf .[^.]* ..?* to remove filenames beginning with multiple dots

echo 
ls -al   #any files left?
echo "Done."
echo "Old files deleted in $TargetDirectory."
echo 

exit $result

