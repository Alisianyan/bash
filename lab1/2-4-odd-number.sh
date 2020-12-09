#!/bin/bash
count=0
while TRUE
	do read -p "Type number:" number
	let count+=1
	if [[ $number%2 -eq 0 ]]
		then echo $count
		break
	fi
done
