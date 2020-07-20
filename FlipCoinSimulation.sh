#!/bin/bash -x

echo "Flip Coin Simulation:"

coin=$((RANDOM%2))
if [ $coin -eq 0 ]
then
   echo "Winner is Heads"
else
   echo "Winner is Tails"
fi
