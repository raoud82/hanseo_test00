#!/bin/sh

val="Hello Linux"
echo $val		# ???? ??
echo "$val"	# ???? ??
echo '$val'	# ?
echo  \$val	# ?
echo "Input String : "
read val		# ??�� ?Է¹?��
echo '$val' is $val	# ????
exit 0		# ?������?

