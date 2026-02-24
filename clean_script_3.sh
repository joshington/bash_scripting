
#!/bin/bash
#cleanup, version3 

#warning:
#this script uses quite a number of features that willbe explained

LOG_DIR=/var/log
ROOT_UID=0 #ONLY users with $UID 0 hve root privileges
LINES=50 #DEFAULT number of lines saved
E_XCD=86 # CANT CHANGE DIRECTORY
E_NOTROOT=87 # non -root exit error


#Run as root, of course
if [ "$UID" -ne "$ROOT_UID" ]
then 
    echo "Must be root to run this script."
    exit $E_NOTROOT
fi 

if [ -n "$1" ] #test whether command-line argument is present (non -empty)
then 
    lines=$1
else
    lines=$LINES #Default, if not specified on commandline
fi"]

cd $LOG_DIR 
if [ `pwd` != "$LOG_DIR" ] #or if [ "$PWD" != "$LOG_DIR" ]
                           #Not in /var/log?
then 
    echo "Can't change to $LOG_DIR."
    exit $E_XCD
fi #Doublecheck ifin right directory before messing with log file.

#Far more efficient is:
#
# cd /var/log || {
#     echo "cannot change to necessary directory." >&2
#     exit $E_XCD;
# }

tail -n $lines messages > mesg.temp #save last section of message log file
mv mesg.temp messages                # rename it as system log file

# cat /dev/null > messages
#* No longer needed, as the above method is safer.

cat /dev/null > wtmp # ': > wtmp' and '> wtmp' have the same effect.
echo "Log files cleaned up."
#Note that there are other log files in /var/log not affected
#+ by this script.

exit 0
# A return value from the script upon exit indicates success
#+ to the shell.

E_WRONG_ARGS=85
script_parameters="-a -h -m -z"
#                  -a = all, -h = help, etc.

if [ $# -ne $Number_of_expected_args ]
then
    echo "Usage: `basename $0`  $script_parameters"
    #  `basename $0` is the scripts filename 
    exit $E_WRONG_ARGS
fi