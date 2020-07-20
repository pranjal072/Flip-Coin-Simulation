#!/bin/bash

echo "Flip Coin Simulation:"

declare -A coinSide=( [Heads]=0 [Tails]=0 )

for((i=0; i<40; i++))
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((coinSide[Heads]++))
   else
		((coinSide[Tails]++))
   fi
	if [ ${coinSide[Heads]} -eq 21 ] || [ ${coinSide[Tails]} -eq 21 ]
	then
		break
	fi
done

echo "Out of $i Coin Flips :"
for side in ${!coinSide[@]}
do
   echo "$side won ${coinSide[$side]} times"
done

diff=$(( ${coinSide[Heads]}-${coinSide[Tails]} ))

if [ $diff -gt 0 ]
then
	echo "Heads won by $diff points"
elif [ $diff -lt 0 ]
then
	echo "Tails won by $(($diff*-1)) points"
else
	echo "ITS A TIE !!"
fi
