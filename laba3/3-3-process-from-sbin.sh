#!/bin/bash
ps -a | grep sbin | tr -s " " | cut -f 2 -d ' '
