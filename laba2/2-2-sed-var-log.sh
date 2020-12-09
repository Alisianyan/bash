#!/bin/bash
egrep "(INFO|WARN|ERR)" /var/log/Xorg.0.log > full.log
sed -ie "s/INFO/Information/g" full.log
sed -ie "s/WARN/Warning/g" full.log
cat full.log
