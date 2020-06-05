#!/bin/bash -x
function palindrome(){
	local temp=$2
			reverse=0

	while (( $temp!=0 ))
	do
		remainder=$(($temp%10))
		reverse=$(($reverse*10+$remainder))
		temp=$(($temp/10))
	done

	echo " "
	if (( $reverse == $first ))
	then
		echo "Numbers are Palindrome"
	else
		echo "Not Palindrome"
  	fi
}
read -p "Enter first Number:" first
read -p "Enter second Number:" second
palindrome $first $second
