#!/bin/sh

# Copyright (c) 2019-2025 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

DIR=$(cd $(dirname $0); pwd)

if type pwsh 2>/dev/null 1>/dev/null; then
	pwsh -File $DIR/install.ps1
else
	echo "  SKIP:PowerShell Core is not installed."
fi
