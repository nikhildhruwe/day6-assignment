#!/bin/bash -x

money=100
broke=0
win=1
betMoney=1
betCount=0
winCount=0

while (( $money<200 && $money!=$broke))
do
	if (( $((RANDOM%2))==$win ))
	then
		money=$(( $money+$betMoney ))
		((winCount++))
	else
		money=$(( $money-$betMoney ))
	fi

	((betCount++))
done

echo "Gambler Details "
echo " "
echo "Number of bets made= " $betCount
echo "Number of times won= " $winCount
