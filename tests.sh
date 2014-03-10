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

OUT7=$(echo '(1+1)*4^log((6^2)^(1/2))' | ./add.out)
RES7='23.975998'

if [ "$OUT7" == "$RES7" ]
then
  echo "Test passed! Result: $OUT7"
else
  echo "Test failed!"
  echo "Expected: $RES7"
  echo "Actual:   $OUT7"
fi

OUT8=$(echo '(1+1)*4^log((6^2)^1/2)' | ./add.out)
RES8='109.953027'

if [ "$OUT8" == "$RES8" ]
then
  echo "Test passed! Result: $OUT8"
else
  echo "Test failed!"
  echo "Expected: $RES8"
  echo "Actual:   $OUT8"
fi

OUT8=$(echo '2^1/2' | ./add.out)
RES8='1.000000'

if [ "$OUT8" == "$RES8" ]
then
  echo "Test passed! Result: $OUT8"
else
  echo "Test failed!"
  echo "Expected: $RES8"
  echo "Actual:   $OUT8"
fi

OUT9=$(echo '2^1+1' | ./add.out)
RES9='3.000000'

if [ "$OUT9" == "$RES9" ]
then
  echo "Test passed! Result: $OUT9"
else
  echo "Test failed!"
  echo "Expected: $RES9"
  echo "Actual:   $OUT9"
fi

OUT10=$(echo '1^2^3^4' | ./add.out)
RES10='1.000000'

if [ "$OUT10" == "$RES10" ]
then
  echo "Test passed! Result: $OUT10"
else
  echo "Test failed!"
  echo "Expected: $RES10"
  echo "Actual:   $OUT10"
fi

OUT10=$(echo '2^3^2' | ./add.out)
RES10='512.000000'

if [ "$OUT10" == "$RES10" ]
then
  echo "Test passed! Result: $OUT10"
else
  echo "Test failed!"
  echo "Expected: $RES10"
  echo "Actual:   $OUT10"
fi

OUT11=$(echo 'exp(4)' | ./add.out)
RES11='54.598150'

if [ "$OUT11" == "$RES11" ]
then
  echo "Test passed! Result: $OUT11"
else
  echo "Test failed!"
  echo "Expected: $RES11"
  echo "Actual:   $OUT11"
fi
