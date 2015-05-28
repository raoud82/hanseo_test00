#!/bin/sh

i=0
while true; do	

	if [ "$i" -eq 10 ]; then
		echo "exit"
		break
	fi

	i=$((i+1))		
	echo "i = $i"
	sleep 1
done

