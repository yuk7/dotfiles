:: Copyright (c) 2022 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php
:: <!--

@echo off
set OG_PWD=%cd%
set TEMP_DIR=%TEMP%\dot.%RANDOM%
mkdir %TEMP_DIR% >NUL 2>&1

set GH_REPO_USER=yuk7
set GH_REPO_NAME=dotfiles
set GH_REPO_URL=https://github.com/%GH_REPO_USER%/%GH_REPO_NAME%
set GH_REPO_SSH=git@github.com:%GH_REPO_USER%/%GH_REPO_NAME%
set GH_BRANCH=main
set ZIP_URL=%GH_REPO_URL%/archive/refs/heads/%GH_BRANCH%.zip
set TMP_ZIP=dotfiles.tmp.zip
set TMP_ZIP_ROOT_DIR=%GH_REPO_NAME%-%GH_BRANCH%

set DEST_DIR=%USERPROFILE%\dotfiles

echo dotfiles quick installer for Windows
echo.

if exist "%DEST_DIR%" (
  echo [ERROR] "%DEST_DIR%" is already exist.
  exit /b 1
)


cd %TEMP_DIR%

WHERE /Q git
IF %ERRORLEVEL% == 0 (
    echo Downloading with Git mode
    git clone "%GH_REPO_URL%" -b "%GH_BRANCH%"
    move "%GH_REPO_NAME%" "%DEST_DIR%"
    cd "%DEST_DIR%"
    rmdir "%TEMP_DIR%"
    git remote set-url origin "%GH_REPO_SSH%"
    echo.
    echo Running installer script
    install.bat
    cd "%OG_PWD%"
    exit /b 0
)

echo Downloading with zip mode
set DQ="
powershell -Command "Invoke-WebRequest %DQ%%ZIP_URL%%DQ% -OutFile %DQ%%TEMP_DIR%\%TMP_ZIP%%DQ%  -UseBasicParsing"
powershell -Command "Expand-Archive %DQ%%TMP_ZIP%%DQ% ."
del /f /q "%TEMP_DIR%\%TMP_ZIP%" >NUL 2>&1
move "%TMP_ZIP_ROOT_DIR%" "%DEST_DIR%"
cd "%DEST_DIR%"
rmdir %TEMP_DIR%
echo.
echo Running installer script
install.bat
cd "%OG_PWD%"
exit /b 0

:: -->