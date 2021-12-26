@echo off

::macros for normal windows commands
doskey c=cls
doskey e=echo. $*
doskey x=exit
doskey k=taskkill $*


::macros for Linux-like commands.(include GNU tools,etc...)


::Additional macros
doskey fe=if exist "%%CD%%$*\" (^
Explorer /root, "%%CD%%$*\"^
) else if exist "%%CD%%\$*\" (^
Explorer /root, "%%CD%%\$*\"^
) else if exist "$*\" (^
Explorer /root, "$*"^
) else (^
Explorer /select, "$*"^
)


:: Navigation
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey .....=cd ../../../..
doskey ~=cd /d %USERPROFILE%
doskey /=cd \
doskey \=cd \

@echo on
