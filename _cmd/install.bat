:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
if exist %USERPROFILE%\cmdrc.bak del /F /Q %USERPROFILE%\cmdrc.bak
if exist %USERPROFILE%\cmdrc.bat move /Y %USERPROFILE%\cmdrc.bat %USERPROFILE%\cmdrc.bak

mklink /h %USERPROFILE%\cmdrc.bat .\cmdrc.bat
reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /d %USERPROFILE%\cmdrc.bat /f

if exist %USERPROFILE%\cmdrc.bat exit /b
if not exist %USERPROFILE%\cmdrc.bat (
echo ERROR:Installation failed.
if exist %USERPROFILE%\cmdrc.bak move /Y %USERPROFILE%\cmdrc.bak %USERPROFILE%\cmdrc.bat
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /f
)
