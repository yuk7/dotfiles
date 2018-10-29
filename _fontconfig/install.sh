#! /bin/sh

# Copyright (c) 2018 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

mv -f ~/.config/fontconfig ~/.config/fontconfig.bak >/dev/null 2>&1

ln -sf $DIR ~/.config/fontconfig
if [ ! -e ~/.bashrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.bashrc.bak ~/.bashrc >/dev/null 2>&1
fi
