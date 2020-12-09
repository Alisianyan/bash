#!/bin/bash
if [ $0 == $HOME ];
	then echo $HOME && exit 0
else echo ERROR && exit 1
fi
