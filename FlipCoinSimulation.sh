#!/bin/bash 

echo "Flip Coin Simulation:"

declare -A coinSide
for((i=0; i<40; i++))
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((coinSide[Heads]++))
   else
		((coinSide[Tails]++))
   fi
done
echo "Out of $i Coin Flips :"
for side in ${!coinSide[@]}
do
	echo "$side won ${coinSide[$side]} times"
done
