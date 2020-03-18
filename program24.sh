#!/bin/bash

time=$(date +%I)
count=0
while test $count -lt $time;do
  echo -e "\a"
  sleep 1
  count=$[$count+1]
done

sleep 3

mint=$(date +%M)

if test $mint -lt 30 && test $mint -gt 15; then
 echo -e "\a"
fi

count=0
while test $mint -lt 45 && test $mint -gt 30 && test $count -lt 2;do
   echo -e "\a"
sleep 1
  count=$[$count+1]
done

count=0
while test $mint -lt 15 && test $mint -gt 00 && test $count -lt 3;do

echo -e '\a'
sleep 1
count=$[$count+1]
done

