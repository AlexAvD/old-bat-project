for /l %%i in (0,1,%corY%) do (
    for /l %%j in (0,1,%corX%) do (
        set curBlock=!earth!
        
        if %%i == 0 set curBlock=!wall!
        if %%i == %corY% set curBlock=!wall!
        if %%j == 0 set curBlock=!wall!
        if %%j == %corX% set curBlock=!wall!
    
        set "lvl1row%%i=!lvl1row%%i!!curBlock!"
    )
)

