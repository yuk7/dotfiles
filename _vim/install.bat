:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
del /F /Q /S %USERPROFILE%\.vimrc.bak >NUL 2>&1
move /Y %USERPROFILE%\.vimrc %USERPROFILE%\.vimrc.bak >NUL 2>&1

mklink /h %USERPROFILE%\.vimrc .\vimrc

if not exist %USERPROFILE%\.vimrc (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.vimrc.bak %USERPROFILE%\.vimrc >NUL 2>&1
)
