
#!/bin/bash
#ex18.sh

#Does a 'whois domain-name' lookup on any of 3 alternate servers;
#    ripe.net, cw.net, radb.net 

#place this script -- renamed 'wh' -- in /usr/local/bin

#requires symbolic links:
#ln -s /usr/local/bin/wh /usr/local/bin/wh-ripe
#ln -s /usr/local/bin/wh /usr/local/bin/wh-apnic
#ln -s /usr/local/bin/wh /usr/local/bin/wh-tucows

E_NOARGS=75 #defines a variable for exit status.
#75 is just a chosen error code meanig no arguments were given.

if [ -z "$1" ] #$1 first argument (domain name) -z checks if string is empty
then 
    echo "Usage: `basename $0` [domain-name]"
    exit $E_NOARGS
fi

# check sript name and call proper server.
case `basename $0` in  #Or: case ${0##*/} in
    wh-ripe)
        whois -h whois.ripe.net $1
        ;;
    wh-apnic)
        whois -h whois.apnic.net $1
        ;;
    wh-tucows)
        whois -h whois.tucows.com $1
        ;;
    *)
        echo "Usage: `basename $0` [domain-name]"
        echo "This script should be called as wh-ripe, wh-apnic, or wh-tucows."
        exit $E_NOARGS
esac
exit $?