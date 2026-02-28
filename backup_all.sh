
#!/bin/bash
#backup all files in current directory modified within last 24 hours.
# in a "tarbal" (tarred and gzipped file)

BACKUPFILE=backup-$(date +%m-%d-%Y)
# -f => specifies Embeds date in backup filename.
#                 Thanks, JOshua 

archive=${1:-$BACKUPFILE}
# If no backup-archive filename specified on commandline,
#+ it will default to "backup-M-DD-YYYY.tar.gz."

tarcvf - `find . -mtime -1 -type f -print` >  $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive $archive.tar.gz"