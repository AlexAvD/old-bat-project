@echo off
for /f "tokens=1 delims=+" %%i in ('wmic os get localdatetime ^| find "."') do set startTimer=%%i
set "startTimer=1%startTimer:~12,2%%startTimer:~15,2%0"
exit /b