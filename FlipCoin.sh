#!/bin/bash -x

echo "Coin Flip"
Head=0
Tail=1

HeadCount=0
TailCount=0
MAX=11
while (( $HeadCount<$MAX && $TailCount<$MAX ))
do
	check=$((RANDOM%2))

	if (( $check == $Head ))
	then
		((HeadCount++))
	else
		((TailCount++))
	fi
done

if (( $HeadCount == 11 ))
then
	echo "Heads appeared 11 times"
else
	echo "Tails appeared 11 times"
fi

echo "Heads:" $HeadCount
echo "Tails:" $TailCount
