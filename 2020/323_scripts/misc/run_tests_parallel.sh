#!/bin/bash

# Register handler that kills all child processes when this script is killed
# Taken from https://aweirdimagination.net/2020/06/28/kill-child-jobs-on-script-exit/
cleanup() {
    # kill all processes whose parent is this process
    pkill -P $$
}

for sig in INT QUIT HUP TERM; do
  trap "
    cleanup
    trap - $sig EXIT
    kill -s $sig "'"$$"' "$sig"
done
trap cleanup EXIT

# Check the input
if ! test -e optimization.txt ; then
  echo "CAT: The file \"optimization.txt\" doesn't exist in `pwd`" ;
  exit 1;
fi
maxTotalOpt="-1" ;
if test -e optimization.txt ; then
  maxTotalOpt=`cat optimization.txt`;
fi

# Run all tests in parallel
echo "CAT: Run all tests" ;
echo "CAT:    Spawn all tests in parallel" ;
pids=()
for i in `ls | grep test` ; do
  if ! test -d $i ; then
    continue ;
  fi
  pushd ./ &> /dev/null ;
  cd $i ;

  # Spawn a test
  make clean &> /dev/null ;
  #make check &> tmpOut &
  ../misc/make_check_results.sh &

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

# Check the results
echo "CAT: Check the results" ;
let successes=0 ;
let tests=0 ;
totalOpt="0" ;
testFailed="";
for i in `ls | grep test` ; do

  # Go to the next test to check
  if ! test -d $i ; then
    continue ;
  fi
  let tests=$tests+1 ;
  pushd ./ &> /dev/null ;
  cd $i ;

  # Check the current test
  if ! test -e tmpOut ; then
    testFailed="  $i\n$testFailed" ;
    popd &> /dev/null ;
    continue ;
  fi
  if test -e optimization.txt ; then
    currentOpt=`cat optimization.txt` ;
    totalOpt=`echo "$currentOpt + $totalOpt" | bc` ;
  fi
  testSucceeded=`grep "Test passed!" tmpOut` ;
  if test "$testSucceeded" != ""; then
    let successes=$successes+1 ;
  else
    testFailed="  $i\n$testFailed" ;
  fi

  popd &> /dev/null ;
done

# Print the summary
echo "CAT:    SUMMARY: $successes tests passed out of $tests" ;

# Check if all tests passed
if test "$testFailed" != "" ; then
  echo "CAT:    Failed tests:" ;
  echo -e "$testFailed" ;
  exit 1;
fi

# All tests passed

# Check the optimization
if test "$maxTotalOpt" != "-1" ; then
  echo "CAT:    SUMMARY: Total execution cost = $totalOpt" ;
  enoughOpt=`echo "$totalOpt <= $maxTotalOpt" | bc` ;
  if test "$enoughOpt" == "0" ; then
    echo "CAT:      Your solution doesn't optimize the original code enough" ;
    echo "CAT:      The maximum cost that accumulate between tests is $maxTotalOpt" ;
    exit 1;
  fi
fi
echo "CAT:    Your homework both passed all tests and it optimized the code enough, congratulations!"
