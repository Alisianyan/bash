#!/bin/bash
pid_of_executor=`./4-7-executor.sh & echo $!`
regexp_is_digit='^[0-9]{1,}$'
while True; do
    read -e -p "Type +, * or digit" input_value
    if [[ "$input_value" == "+" ]]; then
       pkill USR1 $pid_of_executor 
    elif [[ "$input_value" == "*" ]]; then
       pkill USR2 $pid_of_executor
    elif [[ "$input_value" =~ $regexp_is_digit ]]; then
       echo $input_value | $pid_of_executor
    elif [[ "$input_value" == "SIGTERM" ]]; then
       pkill SIGTERM $pid_of_executor
       exit 1
done
