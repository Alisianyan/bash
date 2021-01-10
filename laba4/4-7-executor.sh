#!/bin/bash

result=0
operation="+"
while True; do
    read input_value
    result=$(expr "$result" $operation "$input_value")
    echo $result
    trap USR1 operation="+"
    trap USR2 operation="*"
    trap SIGTERM echo "QUIT" && exit 1
done
