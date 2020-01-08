@echo off
set /a "isDigit=%1*1" 2>nul
if "%isDigit%" == "%1" ( exit /b 1 ) else ( exit /b 0 )