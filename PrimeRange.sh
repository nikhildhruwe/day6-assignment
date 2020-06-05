#!/bin/bash -x
echo "Enter starting number"
read first;
echo "Enter last number"
read last

if(( $first<2 ))
then
   first=2
fi

echo "Output:"

for(( start=$first;$start<$last;start++))
do
flag=0;
number=$start;
  for(( count=2;count<$number;count++ ))
   do
   check=$(($number%$count))
   if [ $check -eq 0 ]
      then
         flag=1;
         break;
   fi
   done
if [ $flag != 1 ]
   then
     echo $number;
fi
done
