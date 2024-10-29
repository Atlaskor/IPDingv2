@echo off
setlocal enabledelayedexpansion

REM Check if the file iplist.txt exists
if not exist iplist.txt (
    echo IP list file not found.
    exit /b
)

REM Split the IP list into two files
set splitCount=0
for /f "tokens=*" %%A in (iplist.txt) do (
    set /a splitCount+=1
)

REM Calculate half the number of entries
set /a halfCount=(splitCount + 1) / 2

REM Divide the IP addresses into two files: iplist1.txt and iplist2.txt
set counter=0
(for /f "tokens=*" %%A in (iplist.txt) do (
    set /a counter+=1
    if !counter! leq %halfCount% (
        echo %%A >> iplist1.txt
    ) else (
        echo %%A >> iplist2.txt
    )
))

REM Create a batch file to handle the pinging for each half
echo @echo off > PingBatch.bat
echo setlocal enabledelayedexpansion >> PingBatch.bat
echo set "ipFile=%%~1" >> PingBatch.bat
echo set "successFile=%%~2" >> PingBatch.bat
echo set "errorFile=%%~3" >> PingBatch.bat

echo for /f "tokens=*" %%A in (!ipFile!) do ( >> PingBatch.bat
echo     set ip=%%A >> PingBatch.bat
echo     echo Pinging !ip! >> PingBatch.bat
echo     ping !ip! -n 1 | find "TTL" > nul >> PingBatch.bat
echo     if errorlevel 1 ( >> PingBatch.bat
echo         echo !ip! did not reply >> PingBatch.bat
echo         echo !ip! >> !errorFile! >> PingBatch.bat
echo     ) else ( >> PingBatch.bat
echo         echo !ip! replied >> PingBatch.bat
echo         echo !ip! >> !successFile! >> PingBatch.bat
echo     ) >> PingBatch.bat
echo ) >> PingBatch.bat
echo endlocal >> PingBatch.bat

REM Create empty success and error files
echo. > successful.txt
echo. > error.txt

REM Run two instances of PingBatch.bat in separate Command Prompt windows
start cmd /c PingBatch.bat iplist1.txt successful.txt error.txt
start cmd /c PingBatch.bat iplist2.txt successful.txt error.txt

echo Ping operations started in separate Command Prompt windows.
pause

REM Convert successful.txt to processed.csv
set "inputFile=successful.txt"
set "outputFile=processed.csv"
echo "Converting %inputFile% to %outputFile%..."

(
    echo Returned
    for /f "usebackq tokens=*" %%A in ("%inputFile%") do (
        set "line=%%A"
        REM Replace space with comma to convert to CSV
        set "line=!line: =,!"
        echo !line!
    )
) > "%outputFile%"

echo "Conversion completed. Output saved to %outputFile%."
echo Stage 2 complete.

REM Convert error.txt to processederror.csv
set "inputFile=error.txt"
set "outputFile=processederror.csv"
echo "Converting %inputFile% to %outputFile%..."

(
    echo Error
    for /f "usebackq tokens=*" %%A in ("%inputFile%") do (
        set "line=%%A"
        REM Replace space with comma to convert to CSV
        set "line=!line: =,!"
        echo !line!
    )
) > "%outputFile%"

echo "Conversion completed. Output saved to %outputFile%."
pause