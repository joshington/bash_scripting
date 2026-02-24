

#a script to clean up log files in /var/log

#clanup
#run as root, of course

cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo "Log files cleaned up successfully."