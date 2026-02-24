
#== variables inside parentheses within the subshell are not 
#available outside the parentheses
#u cannot read variables created in the child process, the subshell

a=123
( a=321; )
echo "a = $a"  #a = 123
# "a" within parentheses acts like a local variable.

#brace expansion - generates arbitrary strings
echo \"{These, words,are,quoted}\"  # "prefix and suffix"

cat {file,file2,file3} > combined_file
#concatenates the files file1, file2, and file3 into combined_file

cp file22.{txt,backup} #copies "file22.txt" to "file22.backup"

#nospacesaowed within the braces unless the spaces are quoted or escaped.
echo {file1, file2}\ :{\ A," B", ' C'}
# file1 : A file1 : B file1 : C file2 : A file2 : B file2 : C


echo {a..z} # a b c d e f g h i j k l m n o p q r s t u v w x y z
#Echoes characters btn a and z

echo {0..3} # 0 1 2 3
#Echoes numbers btn 0 and 3

{} #also referred to as an nline group, this construct in effect creates
#an anonymous func, a function without a name.however, unlike in a standard
# func the variables inside a code block remain visible to the remainder
#of the  script.

{ local a;
    a=123; 
    echo "a inside code block: $a"; 
    }
echo