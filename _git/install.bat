:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
if exist %USERPROFILE%\.gitconfig.bak del /F /Q %USERPROFILE%\.gitconfig.bak
if exist %USERPROFILE%\.gitconfig move /Y %USERPROFILE%\.gitconfig %USERPROFILE%\.gitconfig.bak


mklink /h %USERPROFILE%\.gitconfig .\gitconfig


if exist %USERPROFILE%\.gitconfig exit /b
if not exist %USERPROFILE%\.gitconfig (
echo ERROR:Installation failed.
if exist %USERPROFILE%\.gitconfig.bak move /Y %USERPROFILE%\.gitconfig.bak %USERPROFILE%\.gitconfig
)