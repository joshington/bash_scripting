
#!/bin/bash

#used in the ABS guide with permission

getopt_simple()
{
    echo "getopt_simple()"
    echo "Parameters are '$*'"
    until [ -z "$1" ]
    do 
        echo "Processing parameter of: '$1'"
        if [ ${1:0:1} = '/' ]
        then 
            tmp=${1:1}  #strip off leding '/'
            parameter=${tmp%%=*} #extract name
            value=${tmp##*=}  #extract value
            echo "Parameter: '$parameter', value: '$value'"
            eval $parameter=$value
        fi
        shift 
    done
}

#pass all options to getopt_simple
