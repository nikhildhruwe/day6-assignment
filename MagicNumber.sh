#!/bin/bash -x

input=$((RANDOM%100 + 1))

while ((1))
do
	echo "Guess the Number: "
	read guess
	echo " "
	if (( $guess>$input))
	then
		echo "Your Number is greater"

	else
		echo "Your Number is lower"
	fi

	if (($guess == $input))
	then
		break;
	fi
done
if (( $guess == $input ))
then
	echo " "
	echo "Guess is Right"
	echo "Number is $input"
fi
