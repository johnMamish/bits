#!/bin/bash

totalOpt="0" ;
for i in `ls | grep test` ; do

  # Fetch the next test that needs an oracle
  if ! test -d $i ; then
    continue ;
  fi
  pushd ./ &> /dev/null ;
  cd $i ;
  if ! test -f output/oracle.txt ; then
    echo "WARNING: Test $i doesn't have an oracle" ;
    popd &> /dev/null ;
    continue ;
  fi

  # Fetch the CAT cost
  currentOpt=`grep "CAT cost = " output/oracle.txt | awk '{print $4}'` ;
  if test "$currentOpt" == "" ; then
    echo "ERROR: Test $i didn't have a CAT cost" ;
    exit 1;
  fi
  totalOpt=`echo "$currentOpt + $totalOpt" | bc` ;

  popd &> /dev/null ;
done

echo "CAT: Total cost = $totalOpt" ;
echo "$totalOpt" > optimization.txt 
