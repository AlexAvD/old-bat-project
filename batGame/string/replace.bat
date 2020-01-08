@echo off
setlocal enabledelayedexpansion
set "stringCur=%~1"
set "stringRep=%~2"
set "stringRepPos=%~3"
call string/length stringCurLen "%stringCur%"
call string/length stringRepLen "%stringRep%"
set /a stringRepMax=stringCurLen-stringRepPos
set /a stringRepEE=stringRepMax-stringRepLen
set /a stringRepSS=stringRepPos
set /a stringRepES=stringRepPos+stringRepLen
if %stringRepLen% LEQ %stringRepMax% set "stringReplace=!stringCur:~0,%stringRepSS%!!stringRep!!stringCur:~%stringRepES%!"
echo %stringReplace%

