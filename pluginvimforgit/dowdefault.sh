#!/bin/bash
#ssh='git@github.com:'
#ssh=$ssh$(git remote -v | cut -d':' -f2 | cut -d'(' -f1 | sed -n 1p);
branch=$(git branch | cut -d " " -f 2 | sed -r '/^\s*$/d');
withbranch() {
	read -p $'\nbranch : ' varname;
	git pull origin "$varname";
}
clonegit() {
	read -p $'\nssh clone : ' varname;
	git clone "$varname";
}

echo 1 : down default ssh: $ssh and branch: $branch;
echo 2 : down default ssh: $ssh and branch from input;
echo 3 : clone with ssh from input;
echo esc: exit.;
while true; do
	read -p $'\nchose option : ' -N 1 yn;
	case $yn in
		1) git pull origin $branch;;
		2) withbranch;;
		3) clonegit;;
		[^[]) exit;;
	esac
done
