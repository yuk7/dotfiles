#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

mv -f ~/.ssh/config ~/.ssh/config.bak >/dev/null 2>&1

mkdir ~/.ssh  >/dev/null 2>&1
ln -sf $DIR/config ~/.ssh/config


if [ ! -e ~/.ssh/config ]
then
	echo ERROR:Installation failed.
	mv -f ~/.ssh/config.bak ~/.ssh/config >/dev/null 2>&1
fi
