#!/bin/bash
ps -u $CURRENTUSER -eo comm:pid,cmd > list_of_user_process.list
echo count of user process is `ps -u $CURRENTUSER | sed '1d' | wc -l`
