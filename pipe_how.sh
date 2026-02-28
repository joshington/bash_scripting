
#pipe - passes the output(stdout) of a previous command to the input(stdin)
#of the next one, or to the shell. mthd of chaining commands together

echo ls -l | sh 
#passes the output of "echo ls -l" to the shell for execution
#with the same result as a somple "ls -l".

cat *.lst | sort | uniq
#merges and sorts all ".lst" files, then deletes duplicate lines.