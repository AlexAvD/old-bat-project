@echo off
mode con cols=40 lines=21
SetLocal EnableDelayedExpansion

set "load=-\|/"
set i=0

:loop
set str=
set /a i=i+1

set /a stp1=i%%4
set /a stp2=(i+2)%%4
set /a stp3=(i+3)%%4
set /a stp4=(i+1)%%4

for /l %%j in (0,1,104) do (
	
set "str=!str! !load:~%stp1%,1%!"
set "str=!str! !load:~%stp2%,1%!"
set "str=!str! !load:~%stp3%,1%!"
set "str=!str! !load:~%stp4%,1%!"
)

cls && <nul set /p "s=%str%" & pathping -h 1 -p 60 -q 1 -w 1 localhost > nul

call :loop

pause