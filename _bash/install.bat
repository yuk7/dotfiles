@echo off
cd /d %~dp0
mklink /h %USERPROFILE%\.bashrc .\bashrc
