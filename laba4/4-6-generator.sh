#!/bin/bash
pid_of_executor=`./4-6-executor.sh | echo $!`
while True; do
    read input_value
    if [[ $input_value == "TERM" ]]; then
        pkill SIGTERM $pid_of_executor
done
