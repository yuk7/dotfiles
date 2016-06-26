:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
del /F /Q %USERPROFILE%\.tmux.conf.bak >NUL 2>&1
move /Y %USERPROFILE%\.tmux.conf %USERPROFILE%\.tmux.conf.bak >NUL 2>&1

mklink /h %USERPROFILE%\.tmux.conf %~dp0\tmux.conf

if not exist %USERPROFILE%\.tmux.conf (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.tmux.conf.bak %USERPROFILE%\.tmux.conf >NUL 2>&1
)
