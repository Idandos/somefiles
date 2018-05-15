#!/bin/sh

pkill -9 -ef stress
stress -c 23 &
sleep 2
pids=`ps -aux | grep stress | grep -v grep| awk '{print $2}' | head -10`
j=1
for pid in $pids
do
  sudo taskset -cp $j $pid
  j="$(($j+1))"
done
