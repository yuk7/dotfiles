# Copyright (c) 2016-2025 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

$cpath=Split-Path $MyInvocation.MyCommand.Path
$profilepath=Join-Path $cpath "profile.ps1"
$dpath=$PROFILE.CurrentUserAllHosts
$dpathdir=Split-Path $dpath

New-Item $dpathdir -ItemType Directory 2>$null
Remove-Item $dpath".bak" 2>$null
Move-Item $dpath $dpath".bak" 2>$null

echo ". `"$profilepath`"" > $dpath
