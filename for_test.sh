#!/bin/sh

for day in Sun Mon Tue Wen Thu Fri Sat; do
	echo $day
done

for day in $(cat day.txt); do
	echo $day
done
