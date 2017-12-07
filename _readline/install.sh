#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

mv -f ~/.inputrc ~/.inputrc.bak >/dev/null 2>&1

ln -sf $DIR/inputrc ~/.inputrc
if [ ! -e ~/.inputrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.inputrc.bak ~/.inputrc >/dev/null 2>&1
fi
