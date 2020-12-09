#!/bin/bash
find /bin -executable -type f  | xargs head -n 1 > temp.list
sort temp.list | uniq -c | sorn -r |head -1
