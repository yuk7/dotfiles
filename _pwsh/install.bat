:: Copyright (c) 2016-2025 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off

where powershell > nul 2>&1
if %errorlevel%==0 (
    echo =^> installing for windows powershell
    powershell -File %~dp0\install.ps1
)

where pwsh > nul 2>&1
if %errorlevel%==0 (
    echo =^> installing for powershell core
    pwsh -File %~dp0\install.ps1
)
echo done
