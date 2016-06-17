#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)
cd $DIR

mv -f ~/.bashrc ~/.bashrc.bak >/dev/null 2>&1

ln -sf $DIR/bashrc ~/.bashrc
if [ ! -e ~/.bashrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.bashrc.bak ~/.bashrc >/dev/null 2>&1
fi
