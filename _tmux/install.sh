#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)
cd $DIR

mv -f ~/.tmux.conf ~/.tmux.conf.bak >/dev/null 2>&1

ln -sf $DIR/tmux.conf ~/.tmux.conf
if [ ! -e ~/.tmux.conf ]
then
	echo ERROR:installation failed.
	mv -f ~/.tmux.conf.bak ~/.tmux.conf >/dev/null 2>&1
fi
