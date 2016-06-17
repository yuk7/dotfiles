:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
move /Y %USERPROFILE%\.gitconfig %USERPROFILE%\.gitconfig.bak >NUL 2>&1

mklink /h %USERPROFILE%\.gitconfig .\gitconfig

if exist %USERPROFILE%\.gitconfig exit /b
if not exist %USERPROFILE%\.gitconfig (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.gitconfig.bak %USERPROFILE%\.gitconfig >NUL 2>&1
)
