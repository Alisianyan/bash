#!/bin/bash
if [ -d ~/.trash ]; then
    touch ~/trash
fi

ln -s link $1 && rm $1 && echo `ls -l link` > ~/.trash/trash.log 
