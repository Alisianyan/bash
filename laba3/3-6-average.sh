#!/bin/bash
cat $1 | awk'{s[$2]+=$3; c[$2]++}END{for i in s{print i " "(s[i]/c[i])}}'
