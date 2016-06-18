@echo off

::macros for normal windows commands
doskey c=cls
doskey e=echo. $*
doskey x=exit
doskey k=taskkill $*

doskey cd=if "$*"=="" (^
@cd ^
) else if "$1"=="/d" (^
@cd "$*"^
) else if "$1"=="/D" (^
@cd "$*"^
) else (^
@cd /d "$*"^
)


::macros for Linux-like commands.(include GNU tools,etc...)


::Additional macros

:: Navigation
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey .....=cd ../../../..
doskey ~=cd /d %USERPROFILE%
doskey /=cd \
doskey \=cd \

@echo on