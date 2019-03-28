@echo off
set cmd=%1%
if "%cmd%"=="grep" (goto grp) else (goto grp_continue)
:grp
    dir /s /b %2% | findstr -V ".*cscope.out" | findstr -V ".*.git.*"
    goto end
:grp_continue

if "%cmd%"=="cscope" (goto cs) else (goto cs_continue)
:cs
    cd %2%
    %3%
    cscope -Rb
    goto end
:cs_continue

:end
