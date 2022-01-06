:: Copyright (c) 2016 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
del /F /Q %USERPROFILE%\.inputrc.bak >NUL 2>&1
move /Y %USERPROFILE%\.inputrc %USERPROFILE%\.inputrc.bak >NUL 2>&1

mklink /h %USERPROFILE%\.inputrc %~dp0\inputrc
attrib +h %USERPROFILE%\.inputrc

if not exist %USERPROFILE%\.inputrc (
echo ERROR:Installation failed.
move /Y %USERPROFILE%\.inputrc.bak %USERPROFILE%\.inputrc >NUL 2>&1
)
