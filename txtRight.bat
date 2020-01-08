@echo off
setlocal enabledelayedexpansion
set word=1
for /f "tokens=* delims=" %%i in (text.txt) do (
    for /f "tokens=%word%" %%j in ("%%i") do (
        echo %%j
        set word=!word!+1
    )
    timeout /t 1 > nul
)