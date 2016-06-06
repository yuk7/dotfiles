#!/bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

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
