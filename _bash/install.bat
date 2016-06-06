:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
if exist %USERPROFILE%\.bashrc.bak del /F /Q %USERPROFILE%\.bashrc.bak
if exist %USERPROFILE%\.bashrc move /Y %USERPROFILE%\.bashrc %USERPROFILE%\.bashrc.bak

mklink /h %USERPROFILE%\.bashrc .\bashrc

if exist %USERPROFILE%\.bashrc exit /b
if not exist %USERPROFILE%\.bashrc (
echo ERROR:Installation failed.
if exist %USERPROFILE%\.bashrc.bak move /Y %USERPROFILE%\.bashrc.bak %USERPROFILE%\.bashrc
)