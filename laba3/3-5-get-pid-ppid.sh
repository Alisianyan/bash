#!/bin/bash
for number_of_process in `ls /proc/[0-9]{1,5}`; do
PID=`grep -i "^PID" /proc/$number_of_proces/status |  cut -f 2`
PPID=`grep -i "^PPID" /proc/$number_of_process/status | cut -f 2`
avg_atom=`grep -i "avg_atom" /proc/$number_of_process/sched | cut -f 2`
echo ProcessId=$PID : Parent_ProcessID=$PPID : Average_Time=avg_atom >> list
done
