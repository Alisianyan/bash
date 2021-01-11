#!/bin/bash
today=`date '%Y-%m-%d'`
date_minus_7=`date -d "7 day ago"`
previous_weekly_backup=`find ~ -type d -newer $date_minus_7`

if [[ -z $previous_weekly_backup ]]; then
    rsync --backup --suffix=$today ~/source $previous_weekly_backup
    echo $today >> ~/backup-report
    ls $previous_weekly_backup/*$today >> ~/backup-report
else
    mkdir ~/$today
    cp -r ~/source ~/today
    echo "$today created new backup" >> ~/backup-report 
    ls ~/$today >> ~/backup-report
fi

