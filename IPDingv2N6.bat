@echo off
setlocal enabledelayedexpansion

REM Check if the file iplist1.txt exists
if not exist iplist6.txt (
    echo IP list file not found.
    echo. > iplist6.txt
)

REM Create an empty file named successful
echo. > successful6.txt
echo. > error6.txt

REM Read each line (IP address) from iplist1.txt
for /f "tokens=*" %%A in (iplist6.txt) do (
    set ip=%%A
    echo Pinging !ip!
    
    REM Run ping command and check if it was successful
    ping !ip! -n 1 | find "TTL" > nul
    if errorlevel 1 (
        echo !ip! did not reply
	echo !ip! >> error6.txt
    ) else (
        echo !ip! replied
        echo !ip! >> successful6.txt
    )
    echo.
)
echo Step 1 complete.
exit
