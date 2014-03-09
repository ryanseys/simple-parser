#!/bin/sh
OUT1=$(echo '(1 * 4) ^ (4 / 2) * 5' | ./add.out)
RES1='Result is 80'

if [ "$OUT1" == "$RES1" ]
then
  echo "Tests passed!"
else
  echo "Tests failed!"
  echo "Expected: $RES1"
  echo "Actual:   $OUT1"
fi
