#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

mv -f ~/.gitconfig ~/.gitconfig.bak >/dev/null 2>&1
mv -f ~/.gitattributes ~/.gitattributes.bak >/dev/null 2>&1

ln -sf $DIR/gitconfig ~/.gitconfig
ln -sf $DIR/gitattributes ~/.gitattributes


if [ ! -e ~/.gitconfig ]
then
	echo ERROR:Installation failed.
	mv -f ~/.gitconfig.bak ~/.gitconfig >/dev/null 2>&1
	mv -f ~/.gitattributes.bak ~/.gitattributes >/dev/null 2>&1
fi
