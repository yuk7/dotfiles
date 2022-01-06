:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
cd /d %~dp0

find /? >NUL 2>&1
if not "%ERRORLEVEL%"=="0" (
	echo find is not Windows find.
	echo unsupported. exit.
	exit/b
)


if not "%~2"=="" (
	for %%s in (%*) do cmd /c %~dpnx0 %%s
exit /b
)

if not "%~1"=="" (
	echo.
	echo Installation target:%1
	if exist _%~1\install.bat (
		cmd /c _%~1\install.bat
	) else if exist %~1\install.bat (
		cmd /c %~1\install.bat
	) else (
		echo ERROR:The specified target ^"%~1^" does not exist.
	)
exit/b
)

mkdir %USERPROFILE%\.config >NUL 2>&1
attrib +h %USERPROFILE%\.config

for /f "delims=" %%i in ('dir /A:D /b ^| find "_"') do cmd /c %~dpnx0 %%i
exit/b
