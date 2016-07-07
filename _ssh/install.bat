:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
del /F /Q %USERPROFILE%\.ssh\config.bak >NUL 2>&1
move /Y %USERPROFILE%\.ssh\config %USERPROFILE%\.ssh\config.bak >NUL 2>&1

mkdir %USERPROFILE%\.ssh >NUL 2>&1
mklink /h %USERPROFILE%\.ssh\config %~dp0\config

if not exist %USERPROFILE%\.ssh\config (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.ssh\config.bak %USERPROFILE%\.ssh\config >NUL 2>&1
)
