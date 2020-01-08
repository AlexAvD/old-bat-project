@echo off
setlocal
set "str=%~1"
set len=0
:loop
if "%str%" == "" exit /b %len%
set "str=%str:~0,-1%"
set /a len+=1
goto loop


