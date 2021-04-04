#!/bin/sh

# Copyright (c) 2021 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

mv -f ~/.zshrc ~/.zshrc.bak >/dev/null 2>&1

ln -sf $DIR/zshrc ~/.zshrc
if [ ! -e ~/.zshrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.zshrc.bak ~/.zshrc >/dev/null 2>&1
fi
