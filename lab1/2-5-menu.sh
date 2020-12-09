#!/bin/bash
PS3='choose any option'
echo
select command in "nano" "vi" "links" "exit"
do
	$command
	break
done
