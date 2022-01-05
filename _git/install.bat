:: Copyright (c) 2016-2022 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
set GIT_CONFIG_DIR=%USERPROFILE%\.config\git
mkdir %GIT_CONFIG_DIR% >NUL 2>&1

del /F /Q %GIT_CONFIG_DIR%\config.bak >NUL 2>&1
del /F /Q %GIT_CONFIG_DIR%\attributes.bak >NUL 2>&1
del /F /Q %GIT_CONFIG_DIR%\ignore.bak >NUL 2>&1
move /Y %GIT_CONFIG_DIR%\config %GIT_CONFIG_DIR%\config.bak >NUL 2>&1
move /Y %GIT_CONFIG_DIR%\attributes %GIT_CONFIG_DIR%\attributes.bak >NUL 2>&1
move /Y %GIT_CONFIG_DIR%\ignore %GIT_CONFIG_DIR%\ignore.bak >NUL 2>&1

mklink /h %GIT_CONFIG_DIR%\config %~dp0\gitconfig
mklink /h %GIT_CONFIG_DIR%\attributes %~dp0\gitattributes
mklink /h %GIT_CONFIG_DIR%\ignore %~dp0\gitignore

if not exist %GIT_CONFIG_DIR%\config (
echo ERROR:Installation failed.
move /Y %GIT_CONFIG_DIR%\config.bak %GIT_CONFIG_DIR%\config >NUL 2>&1
move /Y %GIT_CONFIG_DIR%\attributes.bak %GIT_CONFIG_DIR%\attributes >NUL 2>&1
move /Y %GIT_CONFIG_DIR%\ignore.bak %GIT_CONFIG_DIR%\ignore >NUL 2>&1
)
