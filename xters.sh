
#comma operator - liks together a series of rithmetic oprations
let "t2 = ((a = 9, 15 / 3))"
#set "a = 9" and "t2 = 15 / 3"
#comma operator can also concatenate strings
for file in /{,usr/}bin/*calc; 
# find all executable files in /bin and /usr/bin that end with "calc"
do
    if [ -x "$file" ]; then
        echo "Found calculator: $file"
    fi
done