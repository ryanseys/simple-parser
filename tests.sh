#!/bin/sh
OUT1=$(echo '(1 * 4) ^ (4 / 2) * 5' | ./add.out)
RES1='80.000000'

OUT2=$(echo '1 / 4' | ./add.out)
RES2='0.250000'

if [ "$OUT1" == "$RES1" ]
then
  echo "Test passed! Result: $OUT1"
else
  echo "Test failed!"
  echo "Expected: $RES1"
  echo "Actual:   $OUT1"
fi

if [ "$OUT2" == "$RES2" ]
then
  echo "Test passed! Result: $OUT2"
else
  echo "Test failed!"
  echo "Expected: $RES2"
  echo "Actual:   $OUT2"
fi
