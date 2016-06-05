#!/bin/sh
if [ $# -eq 1 ]
then
	if [ -e $1/install.sh ]; then
    		cd $1
	elif [ -e _$1/install.sh ]; then
	    	cd _$1
	else
		echo ERROR:The specified target \"$1\" does not exist.
		exit
	fi

	./install.sh
	exit
fi

find -maxdepth 1 -type d -name "_*" | xargs -n1 $0
