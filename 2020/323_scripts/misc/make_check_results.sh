#!/bin/bash

# This script should be run from a subdirectory, it runs make check and then prints information
# about whether the test passed or failed, and whether it optimized enough.
make check &> tmpOut

i=${PWD##*/}

if test -f "program_optimized"; then
    # Print info about whether this test failed due to an incorrect optimization pass
    semanticFailure=`grep "Output differences can be found in \"diff\"" tmpOut` ;
    if test "$semanticFailure" != ""; then
        printstring="$printstring\e[31m  incorrect output\e[0m;    "
    else
        printstring="$printstring\e[32m    correct output\e[0m;    "
    fi

    # Print info about how much optimization was achieved
    if test -e optimization.txt ; then
        currentOpt=`cat optimization.txt` ;
        oracleFile=output/oracle.txt
        maxInvocations=`tail -n 1 $oracleFile | awk '{print $4}'` ;
        if [ $maxInvocations -eq $currentOpt ] ; then
            printstring="$printstring\e[32m"    # green
        elif [ $maxInvocations -gt $currentOpt ] ; then
            printstring="$printstring\e[34m"    # blue
        elif [ $maxInvocations -lt $currentOpt ] ; then
            printstring="$printstring\e[33m"   # yellow
        fi
        printstring+=$(printf "expected % 10i invocations, got % 10i" $maxInvocations $currentOpt)
        printstring+="\e[0m"
    else
        printstring+="\e[31mno optimization info found; check this test.\e[0m"
    fi
else
    printstring+="\e[31mcompilation failed\e[0m"
fi
printstring+="\n"
printf " %10s: %b" "$i" "$printstring"

## Why doesn't this give correct padding?????
#printstring=`printf " %10s" $i`
#echo -ne $printstring