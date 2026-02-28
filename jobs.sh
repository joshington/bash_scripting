
#!/bin/bash

#run jon in bckground - A command followed by an & will run in the background
#running a loop in th background

for i in {1..10} #generate numbers 1 to 10
do
    echo -n "$i "  #prints without anewline.
done &
wait # Run this loop in the background.
       #will sometimes execute after second loop
       #forces bash to wait for the background job to finish.

echo  #this echo sometiems will not display

for i in {11..20} #second loop
do
    echo -n "$i " #runs in foreground
done

echo #this echo will always display, as it is in the foreground

exit 0