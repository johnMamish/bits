#!/bin/bash

# Generate the oracle output
echo "CAT: Generate oracle outputs" ;
echo "CAT:    Spawn all tests in parallel" ;
pids=()
for i in `ls | grep test` ; do

  # Fetch the next test that needs an oracle
  if ! test -d $i ; then
    continue ;
  fi
  pushd ./ &> /dev/null ;
  cd $i ;
  if test -f output*/*_output ; then
    popd &> /dev/null ;
    continue ;
  fi
  if test -f output*/oracle.txt ; then
    popd &> /dev/null ;
    continue ;
  fi

  # Spawn a test
  make oracle &> tmpOut &
  
  # Collect the PID of the process just spawn
  pids+=( $! )

  popd &> /dev/null ;
done

# Wait all tests to finish
echo "CAT:    Wait all threads to finish" ;
for pid in "${pids[@]}"; do
  wait $pid
done
echo "CAT:    All tests are done" ;

./misc/oracle_global.sh
