@echo off
setlocal enabledelayedexpansion
set cols=100
set rows=50
mode con cols=100 lines=50

call :vrtSpc 22
call :txtCenter %cols% "STRING 1"
call :txtCenter %cols% "STRING 2"
call :txtCenter %cols% "STRING 3"

pause > nul
exit /b

set next=

:vrtSpc
for /l %%i in (1,1,%1) do echo "%next%"
exit /b

:txtCenter
set "vss=%~2"
call string/length vssl "%vss%"
set /a vssp=%1/2-%vssl%/2
for /l %%i in (1,1,%vssp%) do set "vss= !vss!"
echo %vss%
exit /b


choice /c ws > nul



if %errorlevel% == 1 
if %errorlevel% == 2
pause

:center
