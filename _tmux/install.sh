#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

mv -f ~/.tmux.conf ~/.tmux.conf.bak >/dev/null 2>&1
mv -f ~/.tmux.2.0.conf ~/.tmux.2.0.conf.bak >/dev/null 2>&1

ln -sf $DIR/tmux.conf ~/.tmux.conf
ln -sf $DIR/tmux.2.0.conf ~/.tmux.2.0.conf
if [ ! -e ~/.tmux.conf -o ! -e ~/.tmux.2.0.conf ]
then
	echo ERROR:installation failed.
	mv -f ~/.tmux.conf.bak ~/.tmux.conf >/dev/null 2>&1
	mv -f ~/.tmux.2.0.conf.bak ~/.tmux.2.0.conf >/dev/null 2>&1
fi
