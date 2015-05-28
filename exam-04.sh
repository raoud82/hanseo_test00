#!/bin/sh

echo "Enter String 1 : "
read str1

echo "Enter String 2 : "
read str2

while [ "$str1" != "$str2" ]; do

	echo "Mismatch try agin"

	echo "Etner String 2 : "
	read str2
done

echo "Ok"
