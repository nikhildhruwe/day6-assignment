#!/bin/bash -x

read -p "Enter the power of 2: " power

Maximum=$((2**$power))
result=1

echo "Table of powers of 2 upto $Maximum"

for ((count=0;$result<$Maximum;count++))
do
	result=$((2**$count))
	echo "2^$count=$result"
done
