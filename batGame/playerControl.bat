choice /c %chars% > nul
set prsChar=!chars:~%errorlevel%,1!
:: move up
if "%prsChar%" == "w" if %y% GTR 0 (
    set /a y=y-1
)
:: move down
if "%prsChar%" == "s" if %y% LSS %corY% (
    set /a y=y+1
)
:: move left
if "%prsChar%" == "a" if %x% GTR 0 (
    set /a x=x-1
)
:: move right
if "%prsChar%" == "d" if %x% LSS %corX% (
    set /a x=x+1
)
:: exit
if "%prsChar%" == "q" exit /b

set "lvl1row%posY%=!lvl1row%posY%:%player%=%earth%!"