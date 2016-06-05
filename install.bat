@echo off
cd /d %~dp0
mklink /h %USERPROFILE%\.gitconfig .\_git\gitconfig
mklink /h %USERPROFILE%\.bashrc .\_bash\bashrc
