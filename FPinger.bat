set timestamp=%datetime:~0,4%%datetime:~4,2%%datetime:~6,2%_%datetime:~8,2%%datetime:~10,2%%datetime:~12,2%
REM Define the file paths
set "ipfile=iplist.txt"
set "outfile=down_results.txt"
REM Clear or create the output file

REM Loop through each line in iplist.txt
for /f "usebackq delims=" %%i in ("%ipfile%") do (
    echo Pinging %%i...   
    REM Ping with a single packet, timeout after 30 ms
    ping -n 1 -w 30 %%i >nul
    if errorlevel 1 (
        echo %%i is down...
		echo %%i down... >> "C:\Users\dpritchard\desktop\runs\down_%timestamp%.txt"
    ) else (
        echo %%i is up!
		echo %%i up >> "C:\Users\dpritchard\desktop\runs\up_%timestamp%.txt"
    )
)
REM Notify user that script has completed
echo Ping test completed. Results saved to %outfile%.
pause
echo Calling mergeplease.bat.....
call MergePlease.bat
pause
