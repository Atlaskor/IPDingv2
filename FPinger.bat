@echo off
setlocal enabledelayedexpansion
REM Run ipex.bat if needed
call ipex.bat
REM Define the file paths
set "ipfile=iplist.txt"
set "outfile=ping_results.txt"
REM Clear or create the output file
> "%outfile%" echo.
REM Loop through each line in iplist.txt
for /f "usebackq delims=" %%i in ("%ipfile%") do (
    echo Pinging %%i...   
    REM Ping with a single packet, timeout after 250 ms
    ping -n 1 -w 250 %%i >nul
    if errorlevel 1 (
        echo %%i down >> "%outfile%"
    ) else (
        echo %%i up >> "%outfile%"
    )
)
REM Notify user that script has completed
echo Ping test completed. Results saved to %outfile%.
pause
