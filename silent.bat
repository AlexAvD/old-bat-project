@echo off && title %comspec%
start /min cmd /k "@echo off && ( for /l %%i in (1,1,10) do echo %%i ) & ( echo end )" & cmd
