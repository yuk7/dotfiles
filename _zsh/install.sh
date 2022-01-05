#!/bin/sh

# Copyright (c) 2021-2022 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)
if [ "$XDG_CONFIG_HOME" == "" ]
then
	XDG_CONFIG_HOME=~/.config
fi
ZSH_DOT_DIR=$XDG_CONFIG_HOME/zsh

mv -f ~/.zshenv ~/.zshenv.bak >/dev/null 2>&1
ln -sf $DIR/zshenv ~/.zshenv


mkdir -p $ZSH_DOT_DIR
mv -f $ZSH_DOT_DIR/.zshrc ~/.zshrc.bak >/dev/null 2>&1
ln -sf $DIR/zshrc $ZSH_DOT_DIR/.zshrc



if [ ! -e $ZSH_DOT_DIR/.zshrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.zshenv.bak ~/.zshenv >/dev/null 2>&1
	mv -f $ZSH_DOT_DIR.bak $ZSH_DOT_DIR/.zshenv >/dev/null 2>&1
fi
