#!/bin/bash

# Fetch the inputs
allInputs=( $@ ) ;

# Variables
oracleFile=${allInputs[0]} ;
outputFile=${allInputs[1]} ;
origDir="`pwd`" ;

# Check if the files exist
echo "Checking $oracleFile against $outputFile" ;
if ! test -f $oracleFile ; then
  echo "  Test failed" ;
  echo "  File \"$oracleFile\" is missing" ;
  exit 1;
fi
if ! test -f $outputFile ; then
  echo "  Test failed" ;
  echo "  File \"$outputFile\" is missing" ;
  exit 1;
fi

# Copy the output and oracle files to temporary files
outFileToCheck="`mktemp`" ;
oracleFileToCheck="`mktemp`" ;
cp $oracleFile $oracleFileToCheck ;
cp $outputFile $outFileToCheck ;

# Strip out the last lines to both files
../misc/remove_last_line.sh $oracleFileToCheck ;
../misc/remove_last_line.sh $oracleFileToCheck ;
../misc/remove_last_line.sh $outFileToCheck ;
../misc/remove_last_line.sh $outFileToCheck ;

# Check the output
diffOut=`diff $oracleFileToCheck $outFileToCheck` ;
if test "$diffOut" != "" ; then
  echo "  Test failed because output $fileName isn't correct" ;
  echo "  Output differences can be found in \"diff\"" ;
  mkdir -p diff ;
  echo "$diffOut" > diff/${i}_diff_output ;

  # Clean up
  rm $outFileToCheck ;
  rm $oracleFileToCheck ;

  exit 1;
fi

# Check if there is the last number of invocations in the output file
lastLine=`tail -n 1 $oracleFile | grep "^CAT cost"` ;
if test $? -ne 0 ; then
  echo "ERROR: test \"`basename ${origDir}`\" doesn't have the CAT cost at the end of the oracle file \"${oracleFile}\"";

  # Clean up
  rm $outFileToCheck ;
  rm $oracleFileToCheck ;

  exit 1;
fi

# Dump the current level of optimization
currentInvocations=`tail -n 1 $outputFile | awk '{print $4}'` ;
echo "$currentInvocations" > ${origDir}/optimization.txt ;

# Check the optimization
maxInvocations=`tail -n 1 $oracleFile | awk '{print $4}'` ;
enoughOpt=`echo "$currentInvocations <= $maxInvocations" | bc` ;
if test $enoughOpt == "0" ; then
  echo "  Test failed because there are too many CAT invocations left in the generated bitcode" ;
  echo "  The maximum number of CAT invocations are $maxInvocations and the generated bitcode has $currentInvocations" ;

  # Clean up
  rm $outFileToCheck ;
  rm $oracleFileToCheck ;

  exit 1;
fi

echo "Test passed!" ;

# Clean up
rm $outFileToCheck ;
rm $oracleFileToCheck ;
