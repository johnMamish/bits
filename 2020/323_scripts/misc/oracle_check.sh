#!/bin/bash

oracleFileToCheck="`mktemp`" ;
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

  # Generate the baseline output
  make program_output &> /dev/null ;

  # Compare it with the oracle
  cp output/oracle.txt $oracleFileToCheck ;
  ../misc/remove_last_line.sh $oracleFileToCheck ;
  ../misc/remove_last_line.sh $oracleFileToCheck ;
  ../misc/remove_last_line.sh program_output ;
  ../misc/remove_last_line.sh program_output ;
  diffOut=`diff $oracleFileToCheck program_output` ;
  if test "$diffOut" != "" ; then 
    echo "  The oracle for $i is incorrect" ;
  fi

  popd &> /dev/null ;
done

# Clean up
rm $oracleFileToCheck ;
