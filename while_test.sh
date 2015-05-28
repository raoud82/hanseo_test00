#!/bin/sh

i=0
while [ "$i" -le "10" ]; do
#	i=$(expr $i + 1)
	i=$((i + 1))
	echo $i
 	sleep 1
done



