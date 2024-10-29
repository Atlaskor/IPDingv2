@echo off 
setlocal enabledelayedexpansion 
set "ipFile=%~1" 
set "successFile=%~2" 
set "errorFile=%~3" 
for /f "tokens=*" %A in () do ( 
    set ip=%A 
    echo Pinging  
    if errorlevel 1 ( 
        echo  did not reply 
        echo  
    ) else ( 
        echo  replied 
        echo  
    ) 
) 
endlocal 
