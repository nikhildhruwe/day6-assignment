#!/bin/bash -x

read -p "Enter a number=" number

factorial=1
for (( next=2;$next<=$number;next++ ))
do
	factorial=$(($factorial*$next));
done

echo "Factoial of $number: "$factorial
