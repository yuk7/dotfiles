:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0
del /F /Q %USERPROFILE%\cmdrc.bak >NUL 2>&1
move /Y %USERPROFILE%\cmdrc.bat %USERPROFILE%\cmdrc.bak >NUL 2>&1

mklink /h %USERPROFILE%\cmdrc.bat .\cmdrc.bat
reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /d %USERPROFILE%\cmdrc.bat /f

if exist %USERPROFILE%\cmdrc.bat exit /b
if not exist %USERPROFILE%\cmdrc.bat (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\cmdrc.bak %USERPROFILE%\cmdrc.bat >NUL 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /f >NUL 2>&1
)
