@echo off

::macros for normal windows commands
doskey c=cls
doskey e=echo.
doskey x=exit
doskey k=taskkill

::macros for Linux-like commands.(include GNU tools,etc...)


::Additional macros

:: Navigation
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey .....=cd ../../../..
doskey ~=cd %USERPROFILE%

@echo on