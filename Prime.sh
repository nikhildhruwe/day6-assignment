#!/bin/bash -x
echo "Enter number"
read number;

flag=0
echo "Output:"

for (( count=2;$count<$number;count++ ))
do
   if (( $number%$count==0 ))
   then
      flag=1;
      break;
   fi
done

if (( $flag!=1 ))
then
   echo "$number is prime";
else
   echo "$number is not prime"
fi
