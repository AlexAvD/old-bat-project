@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

set "str=Привет мир"

:loop
echo %str%
echo.
set /p "inpStr="
if not "%inpStr%" == "%str%" ( cls & goto loop ) else ( pause > nul )
