@echo off
set ns=0
for /f "tokens=1,2" %%i in ('mode con /status ^| findstr "Столбцы"') do echo %%i %%j
pause > nul