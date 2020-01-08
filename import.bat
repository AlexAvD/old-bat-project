@echo off
for /f "tokens=1,*" %%i in ("%*") do set prms=%%j
( for /f "tokens=*" %%f in ('dir /b /s /a-d ".\%~1"') do call "%%f" %prms% & exit /b ) 2>nul
echo File "%1" not exist & pause > nul & exit / b