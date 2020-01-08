@echo off
for /f "tokens=1 delims=+" %%i in ('wmic os get localdatetime ^| find "."') do set endTimer=%%i
set "endTimer=1%endTimer:~12,2%%endTimer:~15,2%0"
set /a "timerResult=%endTimer%-%startTimer%-115"
if %timerResult% LSS 0 set /a timerResult*=-1
echo %timerResult% ms
exit /b
