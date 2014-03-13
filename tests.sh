#!/usr/bin/env bash

# Testcases
out[1]=$(echo '(1 * 4) ^ (4 / 2) * 5' | ./parse.out)
res[1]='80.000000'
out[2]=$(echo '1 / 4' | ./parse.out)
res[2]='0.250000'
out[3]=$(echo '1 + 4' | ./parse.out)
res[3]='5.000000'
out[4]=$(echo '-1 + -4' | ./parse.out)
res[4]='-5.000000'
out[5]=$(echo '-1--4' | ./parse.out)
res[5]='3.000000'
out[6]=$(echo '4^-1' | ./parse.out)
res[6]='0.250000'
out[7]=$(echo '(1+1)*4^log((6^2)^(1/2))' | ./parse.out)
res[7]='23.975998'
out[8]=$(echo '(1+1)*4^log((6^2)^1/2)' | ./parse.out)
res[8]='109.953027'
out[8]=$(echo '2^1/2' | ./parse.out)
res[8]='1.000000'
out[9]=$(echo '2^1+1' | ./parse.out)
res[9]='3.000000'
out[10]=$(echo '1^2^3^4' | ./parse.out)
res[10]='1.000000'
out[11]=$(echo '2^3^2' | ./parse.out)
res[11]='512.000000'
out[12]=$(echo 'exp(4)' | ./parse.out)
res[12]='54.598150'

for i in {1..12}
do
  if [ "${out[$i]}" == "${res[$i]}" ]
  then
    echo "Test passed! Result: ${out[$i]}"
  else
    echo "Test failed!"
    echo "Expected: ${res[$i]}"
    echo "Actual:   ${out[$i]}"
  fi
done
