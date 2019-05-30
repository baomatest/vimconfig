#!/bin/bash
#git push "$lines" --all -f;
#addfile() {
#	if [[ $1 ]]; then
#		echo $'\n1	: add '$1;
#		git add "$1";
#		echo $'2	: commit\n';
#		read lines;
#		git commit -m "$lines";
#	fi
#}
adddir() {
	read -p $'\ndir : ' i;
	git add "$i";
	echo $'2	: commit\n';
	read lines;
	git commit -m "$lines";
}
addall() {
	echo $'\n1	: add all';
	git add -A;
	echo $'2	: commit\n';
	read lines;
	git commit -m "$lines";
}
upremote() {
	lines=$(git branch | cut -d " " -f 2 | sed -r '/^\s*$/d');
	echo $'\n3	: up branch '$lines;
	git push -u origin "$lines";
}

#echo 1 : add a file;
echo 1 : add a dir;
echo 2 : add all;
echo 3 : up remote;
echo esc : exit.;
while true; do
	read -p $'\nchose option : ' -N 1 i;
	case $i in
		#	[1]) addfile $1;;
		[1]) adddir;;
		[2]) addall;;
		[3]) upremote;;
		[^[]) exit;;
	esac
done
