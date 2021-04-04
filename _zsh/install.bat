:: Copyright (c) 2021 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
del /F /Q %USERPROFILE%\.zshrc.bak >NUL 2>&1
move /Y %USERPROFILE%\.zshrc %USERPROFILE%\.zshrc.bak >NUL 2>&1

mklink /h %USERPROFILE%\.zshrc %~dp0\zshrc

if not exist %USERPROFILE%\.zshrc (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.zshrc.bak %USERPROFILE%\.zshrc >NUL 2>&1
)
