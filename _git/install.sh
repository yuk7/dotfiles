#! /bin/sh

# Copyright (c) 2016-2022 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

if [ "$XDG_CONFIG_HOME" = "" ]
then
	XDG_CONFIG_HOME=~/.config
fi

mkdir -p $XDG_CONFIG_HOME/git
GIT_CONFIG_DIR=$XDG_CONFIG_HOME/git

mv -f $GIT_CONFIG_DIR/config $GIT_CONFIG_DIR/config.bak >/dev/null 2>&1
mv -f $GIT_CONFIG_DIR/attributes $GIT_CONFIG_DIR/attributes.bak >/dev/null 2>&1
mv -f $GIT_CONFIG_DIR/ignore $GIT_CONFIG_DIR/ignore.bak >/dev/null 2>&1

ln -sf $DIR/gitconfig $GIT_CONFIG_DIR/config
ln -sf $DIR/gitattributes $GIT_CONFIG_DIR/attributes
ln -sf $DIR/gitignore $GIT_CONFIG_DIR/ignore


if [ ! -e $GIT_CONFIG_DIR/config ]
then
	echo ERROR:Installation failed.
	mv -f $GIT_CONFIG_DIR/config.bak $GIT_CONFIG_DIR/config >/dev/null 2>&1
	mv -f $GIT_CONFIG_DIR/attributes.bak $GIT_CONFIG_DIR/attributes >/dev/null 2>&1
	mv -f $GIT_CONFIG_DIR/ignore.bak $GIT_CONFIG_DIR/ignore >/dev/null 2>&1
fi
