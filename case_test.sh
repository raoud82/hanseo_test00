#!/bin/sh

echo "Are you Human?(yes/no)"
read val

case "$val" in
 yes | y | YES | y* )
	echo "Yes"
	;;
 No | n | no )
	echo "No"
	;;
*)
	echo "Wrong data"
	;;
esac




