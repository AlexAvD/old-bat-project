set /a posY=%y%
set /a posXES=%x%+1

set "lvl1row%posY%=!lvl1row%posY%:~0,%x%!!player!!lvl1row%posY%:~%posXES%!"

