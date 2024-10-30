@echo off
setlocal enabledelayedexpansion

REM Check if the file iplist1.txt exists
if not exist iplist1.txt (
    echo IP list file not found.
    echo. > iplist1.txt
)

REM Create an empty file named successful
echo. > successful1.txt
echo. > error1.txt

REM Read each line (IP address) from iplist1.txt
for /f "tokens=*" %%A in (iplist1.txt) do (
    set ip=%%A
    echo Pinging !ip!
    
    REM Run ping command and check if it was successful
    ping !ip! -n 1 | find "TTL" > nul
    if errorlevel 1 (
        echo !ip! did not reply
	echo !ip! >> error1.txt
    ) else (
        echo !ip! replied
        echo !ip! >> successful1.txt
    )
    echo.
)
echo Step 1 complete.
exit

