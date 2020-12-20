#!/bin/bash
i="0"
IFS=$'\n'
while read line; do
    IFS=' '
    i=$[$i+1]
    echo $line
    read -r -a array <<< $line
    IFS=$'\n'
done < ttest
echo "${array-1[0]}"
