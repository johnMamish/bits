#!/bin/bash

# Fetch the inputs
if test $# -lt 4 ; then
  echo "USAGE: `basename $0` AA INPUT_FILE OUTPUT_FILE MAX_INVOCATIONS" ;
  exit 1;
fi
AA="$1" ;
inputFile="$2" ;
outputFile="$3" ;
maxIterations=$4 ;
prefixCommand="" ;
if test $# -gt 4 ; then
    #prefixCommand="valgrind" ;
    prefixCommand="" ;
fi

let iter=0 ;
fixedPointReached="0" ;
rm compiler_output
while [ "$fixedPointReached" == "0" ] ; do

  # Run the compiler
  echo "#### Running the CAT compiler" ;
  printf "#### Running the CAT compiler: pass %i\n" $iter >> compiler_output ;
  $prefixCommand opt -load ~/CAT/lib/CAT.so ${inputFile} ${AA} -CAT -o ${outputFile} &> current_opt_output.txt ;
  cat current_opt_output.txt &>> compiler_output ;

  # Check if the compiler has generated the bitcode
  if ! test -f ${outputFile} ; then
    echo "####  ERROR = the compiler did not generate the bitcode file." ;
    exit 1 ;
  fi
  if test "$prefixCommand" != "" ; then
    grep "^==" current_opt_output.txt | grep "Invalid" ;
    if test $? -eq 0 ; then
      echo "ERROR: there is a memory corruption in your LLVM pass." ;
      echo "You can find the full output including valgrind's output in the file `readlink -f current_opt_output.txt`" ;
      exit 1 ;
    fi
  fi
  cat current_opt_output.txt ;
  rm current_opt_output.txt ;

  # Check if we reached the fixed point
  llvm-dis ${inputFile} -o I.ll ;
  llvm-dis ${outputFile} -o O.ll ;
  differentLines=`diff I.ll O.ll | wc -l` ;
  if test $differentLines != "4" ; then
    echo "####  The compiler modified the input bitcode: the fixed point isn't reached." ;
    inputFile="output_code_iter_${iter}.bc" ;
    cp "${outputFile}" "${inputFile}" ;

  else
    echo "####  The compiler did not modify the input bitcode: the fixed point has been reached." ;
    fixedPointReached="1" ;
  fi

  let iter=${iter}+1 ;
  if [ $maxIterations -ne "0" -a $iter -eq $maxIterations ] ; then
    break ;
  fi
done
