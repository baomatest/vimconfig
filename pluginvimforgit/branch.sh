#!/bin/bash
showbranch() {
	for (( i = 1; i <= $(git branch| wc -l); i++ )); do
		echo  ""$(tput setaf 3)"$i" Name branch : $(tput sgr 0)" $(git branch | sed -n "$i"p)";
	done
}

swichbranch() {
	read -p $'\nchose branch : ' -N 1 i;
	new=$(git branch | sed -n "$i"p | cut -d ' ' -f2);
	if [ -z "$new" ] ; then
		new=$(git branch | sed -n "$i"p | cut -d ' ' -f3);
	fi
	echo $'\n'$new;
	git checkout $new;
}
addbranchtogit() {
	read -p $'\nname : '  i;
	git branch "$i";
	git push -u origin "$i";
}
deletebranchongit() {
	read -p $'\nchose branch : ' -N 1 i;
	new=$(git branch | sed -n "$i"p | cut -d ' ' -f2);
	if [ -z "$new" ] ; then
		new=$(git branch | sed -n "$i"p | cut -d ' ' -f3);
	fi
	echo $'\n'$new;
	git branch -d "$new";
	git push -u origin --delete "$new";
}
new() {
	read -p $'\nname : '  i;
	git branch "$i";
}
delete() {
	read -p $'\nchose branch : ' -N 1 i;
	new=$(git branch | sed -n "$i"p | cut -d ' ' -f2);
	if [ -z "$new" ] ; then
		new=$(git branch | sed -n "$i"p | cut -d ' ' -f3);
	fi
	echo $'\n'$new;
	git branch -d "$new";
}
showbranch;
echo 0 : show branch;
echo 1 : switch branch;
echo 2 : create branch on git;
echo "3 : delete branch on git(switch branch first delete)";
echo 4 : new branch;
echo "5 : delete branch (switch branch first delete)";
echo esc : exit.;
while true; do
	read -p $'\nchose option : ' -N 1 i;
	case $i in
		[0]) showbranch;;
		[1]) swichbranch;;
		[2]) addbranchtogit;;
		[3]) deletebranchongit;;
		[4]) new;;
		[5]) delete;;
		[^[]) exit;;
	esac
done
