#!/bin/bash -x
function Prime(){

	if (($number<2))
	then
		"Not a Prime Number"
		return
	fi

	for((count=2;$count<$number;count++))
	do
		if (( $number%$count==0))
		then
			echo "$number is Not a Prime Number"
			return
		fi
	done

	echo "$number is Prime Number"

}

function Palindrome(){
		local temp=$1
				reverse=0
		while (($temp!=0))
		do
			remainder=$(($temp%10))
			reverse=$(($reverse*10+$remainder))
			temp=$(($temp/10))
		done
#echo $reverse
		if(( $reverse == $number ))
		then
			echo "$number is a Palindrome"
			return $reverse
		else
			echo "$number is Not a Palindrome"
			return $reverse
		fi
}

read -p "Enter a Number:" number
echo " "
Prime $number
Palindrome $number
echo " "
echo "reverse:" $reverse
number=$reverse
Prime $number
