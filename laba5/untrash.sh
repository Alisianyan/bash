#!/bin/bash
find / -f $1 | exec echo ls -l > .results {} \;

for line in .results; do
    echo "do you want to recover $line ?"
    read -e "type y or n" user_answer

   if [[ $user_answer == "y" ]]; then
        cat link > $1
   else
        echo "type y or n"
   fi
done 
