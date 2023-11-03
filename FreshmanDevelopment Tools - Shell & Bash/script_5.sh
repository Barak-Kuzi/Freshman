#!/bin/bash -eu

num=$((1 + RANDOM % 100))

while true
do
	echo "Guess a number:"
	read -r guess
	
	if [ $guess -lt $num ]
	then
		echo "Your guess is too small, try again..."
	elif [ $guess -gt $num ]
	then
		echo "Your guess is too big, try again..."
	else
		echo "You are right!"
		exit 0
	fi
done