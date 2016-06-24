#!/bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php


DIR=$(cd $(dirname $0); pwd)
cd $(dirname $0)

if [ $# -ge 2 ]
then
	for f in `seq 1 ${#}`
	do
		$DIR/$(basename $0) ${1}
		shift
	done
	exit
fi


if [ $# -eq 1 ]
then
	echo
	echo Installation target:$1
	if [ -e ./_$1/install.sh ]; then
		./_$1/install.sh
	elif [ -e ./$1/install.sh ]; then
		./$1/install.sh
	else
		echo ERROR:The specified target \"$1\" does not exist.
		exit
	fi
	exit
fi

find -maxdepth 1 -type d -name "_*" | xargs -n1 $DIR/$(basename $0)
