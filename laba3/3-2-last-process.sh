#!/bin/bash
ps -eo pid,lstart,cmd --sort +start_time | sed  -e '1{$q;} -e '$!{h;d;}' -e x
