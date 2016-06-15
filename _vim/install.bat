:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
if exist %USERPROFILE%\.vimrc.bak del /F /Q %USERPROFILE%\.vimrc.bak
if exist %USERPROFILE%\.vimrc move /Y %USERPROFILE%\.vimrc %USERPROFILE%\.vimrc.bak

mklink /h %USERPROFILE%\.vimrc .\vimrc

if exist %USERPROFILE%\.vimrc exit /b
if not exist %USERPROFILE%\.vimrc (
echo ERROR:Installation failed.
if exist %USERPROFILE%\.vimrc.bak move /Y %USERPROFILE%\.vimrc.bak %USERPROFILE%\.vimrc
)
