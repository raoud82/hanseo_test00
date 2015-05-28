#!/bin/sh

echo "Are you Human?(yes/no)"
read val

if [ "$val" = yes ]; then
	echo "Yes"
elif [ "$val" = no ]; then
	echo "No"
else
	echo "Wrong Data"
fi



