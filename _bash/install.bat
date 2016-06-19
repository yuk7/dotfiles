:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
del /F /Q %USERPROFILE%\.bashrc.bak >NUL 2>&1
move /Y %USERPROFILE%\.bashrc %USERPROFILE%\.bashrc.bak >NUL 2>&1

mklink /h %USERPROFILE%\.bashrc .\bashrc

if not exist %USERPROFILE%\.bashrc (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.bashrc.bak %USERPROFILE%\.bashrc >NUL 2>&1
)
