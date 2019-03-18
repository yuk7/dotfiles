#! /bin/sh

# Copyright (c) 2019 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)
DESTDIR=~/.config/powershell

mkdir -p "$DESTDIR" >/dev/null 2>&1

mv -f $DESTDIR/profile.ps1 $DESTDIR/profile.ps1.bak >/dev/null 2>&1

ln -sf $DIR/profile.ps1 $DESTDIR/profile.ps1
if [ ! -e ~/.config/powershell/profile.ps1 ]
then
	echo ERROR:installation failed.
	mv -f $DESTDIR/profile.ps1 $DESTDIR/profile.ps1 >/dev/null 2>&1
fi
