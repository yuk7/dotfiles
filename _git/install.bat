@echo off
cd /d %~dp0
mklink /h %USERPROFILE%\.gitconfig .\gitconfig