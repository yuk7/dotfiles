:: Copyright (c) 2021 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
set ZDOTDIR=%ZDOTDIR%\.config\zsh
mkdir %ZDOTDIR% >NUL 2>&1

del /F /Q %USERPROFILE%\.zshenv.bak >NUL 2>&1
move /Y %USERPROFILE%\.zshenv %USERPROFILE%\.zshenv.bak >NUL 2>&1
mklink /h %USERPROFILE%\.zshenv %~dp0\zshenv

del /F /Q %ZDOTDIR%\.zshrc.bak >NUL 2>&1
move /Y %ZDOTDIR%\.zshrc %ZDOTDIR%\.zshrc.bak >NUL 2>&1
mklink /h %ZDOTDIR%\.zshrc %~dp0\zshrc


if not exist %ZDOTDIR%\.zshrc (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.zshenv.bak %USERPROFILE%\.zshenv >NUL 2>&1
move /Y %ZDOTDIR%\.zshrc.bak %ZDOTDIR%\.zshrc >NUL 2>&1
)
