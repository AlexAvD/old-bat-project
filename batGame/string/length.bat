@echo off
set %1=0
:strLen
set "strLen=%~2"
if not "%strLen%"=="" set /a %1+=1 & call :strLen %1 "%strLen:~1%" 
exit /b