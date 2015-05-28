#!/bin/sh

create_file() {
cat > ./num.txt<<EOF
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 17 18 19 20
EOF
}

if [ $# -ne 1 ]; then
	echo "Usage: $0 {1~20}"
	exit 1
fi

if [ ! -f "./num.txt" ]; then
	echo "No File.."
fi

for num in $(cat num.txt); do
	echo "num is $num"
	if [ "$num" -eq "$1" ]; then
		break
	fi
	sleep 1
done
