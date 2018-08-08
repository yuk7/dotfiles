:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
set DESTDIR=%APPDATA%\Code\User

del /F /Q /S %DESTDIR%\settings.json.bak >NUL 2>&1
move /Y %DESTDIR%\settings.json %DESTDIR%\settings.json.bak >NUL 2>&1

mkdir %DESTDIR% >NUL 2>&1
mklink /h %DESTDIR%\settings.json %~dp0\settings.json

if not exist %DESTDIR%\settings.json (
echo ERROR:Installation failed.
move /Y %DESTDIR%\settings.json.bak %DESTDIR%\settings.json >NUL 2>&1
)
