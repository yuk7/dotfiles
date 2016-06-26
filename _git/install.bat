:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
del /F /Q %USERPROFILE%\.gitconfig.bak >NUL 2>&1
move /Y %USERPROFILE%\.gitconfig %USERPROFILE%\.gitconfig.bak >NUL 2>&1

mklink /h %USERPROFILE%\.gitconfig %~dp0\gitconfig

if not exist %USERPROFILE%\.gitconfig (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.gitconfig.bak %USERPROFILE%\.gitconfig >NUL 2>&1
)
