@echo off
setlocal enabledelayedexpansion

REM Check if the file iplist1.txt exists
if not exist iplist4.txt (
    echo IP list file not found.
    echo. > iplist4.txt
)

REM Create an empty file named successful
echo. > successful4.txt
echo. > error4.txt

REM Read each line (IP address) from iplist1.txt
for /f "tokens=*" %%A in (iplist4.txt) do (
    set ip=%%A
    echo Pinging !ip!
    
    REM Run ping command and check if it was successful
    ping !ip! -n 1 | find "TTL" > nul
    if errorlevel 1 (
        echo !ip! did not reply
	echo !ip! >> error4.txt
    ) else (
        echo !ip! replied
        echo !ip! >> successful4.txt
    )
    echo.
)
echo Step 1 complete.
exit
