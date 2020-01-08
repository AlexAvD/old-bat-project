@echo off
if "%~1" == "" ( set randMax=1 ) else ( set randMax=%1 )
if "%~2" == "" ( set randMin=0 ) else ( set randMin=%2 )
set /a randNum=%random% %% (%randMax% - %randMin% + 1) + %randMin%
if not "%~3" == "" ( set %~3=%randNum% ) else ( echo %randNum% )
exit /b