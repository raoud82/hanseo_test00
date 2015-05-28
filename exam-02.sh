#!/bin/sh

if [ ! $# -eq 3 ]; then
	echo "Usage: $0 [dir_name|file_name|{baseball|football}]"
	exit 1
fi

cd $HOME
if [ -d $1 ]; then
	echo "This is a directory"
else
	echo "This is not a directory or No directory."
	mkdir -p $HOME/$1
fi

cd $HOME/$1
if [ -f $2 ]; then
	echo "This is a file"
else
	echo "This is not a file or No file."
fi

if [ "$3" = "baseball" ]; then
	echo "BaseBall"
	echo "Sports : $3" > "$HOME/$1/$2"
elif [ "$3" = "football" ]; then
	echo "Football"
	echo "Sports : $3" > "$HOME/$1/$2"
else
	echo "[baseball or football]"
	read sport
	if [ "$sport" = "baseball" ] || [ "$sport" = "football" ]; then
		echo "==> $sport"
		echo "Sports : $sport" > "$HOME/$1/$2"
	else
		echo "Wrong Data"
		exit 1
	fi
fi

exit 0
