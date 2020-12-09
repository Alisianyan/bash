#!/bin/bash
my_array=()
while TRUE
	do read -p "Type any symbol" symbol
	my_array+=($symbol)
	if [[ "$symbol" == "q" ]]; then
		for value in "${my_array[@]}"; do printf $value ; done
		break
	fi
done
