#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)
cd $DIR

mv -f ~/.vimrc ~/.vimrc.bak >/dev/null 2>&1

ln -sf $DIR/vimrc ~/.vimrc

if [ ! -e ~/.vimrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.vimrc.bak ~/.vimrc >/dev/null 2>&1
fi
