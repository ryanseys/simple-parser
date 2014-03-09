#!/bin/sh
OUT1=$(echo '(1 * 4) ^ (4 / 2) * 5' | ./add.out)
RES1='80.000000'

if [ "$OUT1" == "$RES1" ]
then
  echo "Test passed! Result: $OUT1"
else
  echo "Test failed!"
  echo "Expected: $RES1"
  echo "Actual:   $OUT1"
fi

OUT2=$(echo '1 / 4' | ./add.out)
RES2='0.250000'

if [ "$OUT2" == "$RES2" ]
then
  echo "Test passed! Result: $OUT2"
else
  echo "Test failed!"
  echo "Expected: $RES2"
  echo "Actual:   $OUT2"
fi

OUT3=$(echo '1 + 4' | ./add.out)
RES3='5.000000'

if [ "$OUT3" == "$RES3" ]
then
  echo "Test passed! Result: $OUT3"
else
  echo "Test failed!"
  echo "Expected: $RES3"
  echo "Actual:   $OUT3"
fi

OUT4=$(echo '-1 + -4' | ./add.out)
RES4='-5.000000'

if [ "$OUT4" == "$RES4" ]
then
  echo "Test passed! Result: $OUT4"
else
  echo "Test failed!"
  echo "Expected: $RES4"
  echo "Actual:   $OUT4"
fi

OUT5=$(echo '-1--4' | ./add.out)
RES5='3.000000'

if [ "$OUT5" == "$RES5" ]
then
  echo "Test passed! Result: $OUT5"
else
  echo "Test failed!"
  echo "Expected: $RES5"
  echo "Actual:   $OUT5"
fi

OUT6=$(echo '4^-1' | ./add.out)
RES6='0.250000'

if [ "$OUT6" == "$RES6" ]
then
  echo "Test passed! Result: $OUT6"
else
  echo "Test failed!"
  echo "Expected: $RES6"
  echo "Actual:   $OUT6"
fi
