#!/bin/bash
resethard() {
	read -p $'\nchose number : ' i;
	git reset --hard HEAD~"$i";
}
resetsoft() {
	read -p $'\nchose number : ' i;
	git reset --soft HEAD~"$i";
}
redoall() {
	lines=$(git branch | cut -d " " -f 2 | sed -r '/^\s*$/d');
	git reset --hard origin/"$lines";
}
updeonre() {
	lines=$(git branch | cut -d " " -f 2 | sed -r '/^\s*$/d');
	git push -u origin +"$lines";
}


let "j = 0";
for (( i = 1; i <= $(git log | sed -r '/^\*$/d' | sed '/commit/!d' | wc -l); i++ )); do
	let "j += 2";
	echo ""$(tput setaf 3)"$i" Head: $(tput sgr 0)  $(git log | sed -r '/^\s*$/d' | sed '/commit/!d' | sed -n "$i"p | cut -d ' ' -f2);
	echo -e '\t' "$(tput setaf 2)Comment: $(tput sgr 0)" $(git log | sed -r '/^\s*$/d' | sed '/Date/,+1!d' | sed -n "$j"p) $(git log | sed -r '/^\s*$/d' | sed '/Date/!d' | sed -n "$i"p ) "$(tput setaf 2)Author: $(tput sgr 0)"$(git log | sed -r '/^\s*$/d' | sed '/Author/!d' | sed -n "$i"p | cut -d ':' -f2);
done
let "j = 0";
echo 1 : reset soft;
echo 2 : reset hard;
echo 3 : redo all;
echo 4 : update delete on remote;
echo esc : exit;
while true; do
	read -p $'\nchose option : ' -N 1 i;
	case $i in
		1) resetsoft;;
		2) resethard;;
		3) redoall;;
		[^[]) exit;;
	esac
done
