#!/bin/bash
read -e -p "Specify input file" input_file
new_input=`tail -f $input_file`
result=0
regexp_is_digit='^[0-9]{1,}$'

while True; do
    if [[ $new_input =~ $regexp_is_digit ]]; then
        result=$(expr "$result" + "$new_input")
        echo $result
    elif [[ $new_input == "*" ]]; then
        result=$(expr "$result" * "$new_input" )
        echo $result
    elif [[ $new_input == "QUIT" ]]; then
        echo "Bue-bue!"
        exit 1
    else 
        echo "input data is invalid. Please, use digits, +, * or QUIT"
        exit 127
done
