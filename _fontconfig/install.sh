#! /bin/sh

# Copyright (c) 2018-2022 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)
if [ "$XDG_CONFIG_HOME" == "" ]
then
	XDG_CONFIG_HOME=~/.config
fi
mv -f $XDG_CONFIG_HOME/fontconfig $XDG_CONFIG_HOME/fontconfig.bak >/dev/null 2>&1

ln -sf $DIR ~/.config/fontconfig
if [ ! -e ~/.bashrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.bashrc.bak ~/.bashrc >/dev/null 2>&1
fi
