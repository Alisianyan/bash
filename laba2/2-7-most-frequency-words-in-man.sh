#!/bin/bash
man | egrep "[a-zA-Z]{4,}" | sort -c | uniq -u | head -n 3
