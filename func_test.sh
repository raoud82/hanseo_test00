#!/bin/sh

test() {
	echo "test()==> "
	echo "1. para = $1"
	echo "2. para = $2"
	echo "3. para = $3"
	echo "4. para = $4"
	echo "para list = $*"
	echo "commnad = $0"

	return 100
}

echo "call test()"
test 1 2 3 4
echo $?
