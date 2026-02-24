
#!/bin/bash
#script should show time and date, list all logged-in users and gives the
#system uptime upon invocaation. script should save this information 
#to a log file


LOG_DIR=$HOME
#instead of forcing root i could just store it into home folder
LOG_FILE="$HOME/system_info.log" #File to save the information
ROOT_UID=0
E_XCD=86 # CANT CHANGE DIRECTORY
E_NOTROOT=87 # non -root exit error

#run as root ofcourse
#if [ "$UID" -ne "$ROOT_UID" ]
#then 
 #   echo "Must be root to run this script."
#    exit $E_NOTROOT
#fi 

cd $LOG_DIR || exit $E_XCD
if [ `pwd` != "$LOG_DIR" ]

then
    echo "Cant change to $LOG_DIR"
    exit $E_XCD
fi # double check if in right directory before messing up logfil.

#=== i want to show time  and date now
current_time=$(date +"%Y-%m-%d %H:%M:%S")

#===list all logged-in users by their username
users_list=$(users)
system_uptime=$(uptime -p)

#Display and save
{
    echo "==============================="
    echo "System Report"
    echo "Generated on: $current_time"
    echo ""
    echo "Logged-in Users:"
    echo "$users_list"
    echo ""
    echo "System Uptime:"
    echo "$system_uptime"
    echo "==============================="
    echo ""
} | tee -a $LOG_FILE

# -a = appends output to system_info.log
# and also prints it to the screen
# the { } groups mutiple echo commands together and sends all outputs
#into tee