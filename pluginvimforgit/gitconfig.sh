#!/bin/bash
add() {
	read -p $'\nadd remote : ' varname
	git remote add origin "$varname";
}
echo 1	: show config.
echo 2	: edit config global.
echo 3	: edit config.
echo 4	: git init.
echo 5	: git add remote ssh.
echo esc: exit.

while true; do
	read -p $'\nchose option : ' -N 1 yn
	case $yn in
		1) git config --list;;
		2) git config --global --edit;;
		3) git config --edit;;
		4) git init;;
		5) add;;
		[^[]) exit;;
	esac
done
