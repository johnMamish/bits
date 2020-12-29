#!/bin/bash

myvar="hello"
myother=$(printf "printed from \$(): %10s" $myvar)
echo $myother

printf "printed directly from printf: %10s" $myvar
echo
