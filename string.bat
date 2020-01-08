@echo off
setlocal enabledelayedexpansion

set "string=%~1"
set stringKey=%2

if "%stringKey%" == "" call stringLen "%string%"
if "%stringKey%" == "/len" call stringLen "%string%"
if "%stringKey%" == "/swap" (
    stringSwap "%string%" ""
)
echo %errorlevel%


