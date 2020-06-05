#!/bin/bash -x
between='2020-05-21'
val1=$(date --date='2020-05-20' +%s)
val2=$(date --date='2020-06-30' +%s)
val3=$(date --date=$between +%s)

if (( $val1 < $val3 & $val2 > $val3 ))
   then
    echo "valid date";
else
   echo "invalid date";
fi
