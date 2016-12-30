#! /bin/sh

# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

mv -f ~/.minttyrc ~/.minttyrc.bak >/dev/null 2>&1

ln -sf $DIR/minttyrc ~/.minttyrc
if [ ! -e ~/.minttyrc ]
then
	echo ERROR:installation failed.
	mv -f ~/.minttyrc.bak ~/.minttyrc >/dev/null 2>&1
fi
