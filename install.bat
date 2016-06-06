:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0

if not "%~1"=="" (
	if exist _%~1\install.bat (
		cmd /c _%~1\install.bat
	) else if exist %~1\install.bat (
		cmd /c %~1\install.bat
	) else (
		echo ERROR:The specified target ^"%~1^" does not exist.
	)
exit/b
)

for /f "delims=" %%i in ('dir /A:D /b ^| find "_"') do cmd /c %~dpnx0 %%i
exit/b
