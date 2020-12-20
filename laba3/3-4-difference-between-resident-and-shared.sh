#!/bin/bash
cat /dev/null > temp
ps -Ao pid,vsz,rss >> temp
sed -i '1d' temp
sort -o temp temp
while read pid vsz rss; do
diff="$(($vsz-$rss))"
echo $pid:$diff
done < temp
