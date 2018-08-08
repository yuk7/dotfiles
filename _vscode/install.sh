#! /bin/sh

# Copyright (c) 2018 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)
DESTDIR=~/.config/Code/User

mv -f $DESTDIR/settings.json $DESTDIR/settings.json.bak >/dev/null 2>&1

mkdir -p $DESTDIR  >/dev/null 2>&1

ln -sf $DIR/settings.json $DESTDIR/settings.json

if [ ! -e $DESTDIR/settings.json ]
then
	echo ERROR:installation failed.
	mv -f $DESTDIR/settings.json.bak $DESTDIR/settings.json >/dev/null 2>&1
fi
