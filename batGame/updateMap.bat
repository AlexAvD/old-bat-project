mode con cols=%w% lines=%h%
set map=
for /l %%i in (0,1,%corY%) do set "map=!map!!lvl1row%%i!"
cls & <nul set /p "m=%map%"
