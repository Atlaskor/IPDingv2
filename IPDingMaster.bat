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
::Begin summoning ping windows.
echo Ping operations started in separate Command Prompt windows.
start "IPDing Window One" "IPDingV2.bat"
start "IPDing Window Two" "IPDingV2N2.bat"
::Must pause for pings to complete before moving on.
echo DO NOT MOVE ON UNTIL PINGS ARE COMPLETE!
pause
::Begin combination of files.
echo Ping operations complete, compiling data.
set suc1="successful1.txt"
set suc2="successful2.txt"
set comb="successful.txt"
echo. > %comb%
type %suc1% >> %comb%
type %suc2% >> %comb%
echo Files half combined.
set suc1="error1.txt"
set suc2="error2.txt"
set comb="error.txt"
echo. > %comb%
type %suc1% >> %comb%
type %suc2% >> %comb%
echo Files half combined.
::First half complete.

echo Files combined.
::File combination completed.
del "successful1.txt"
del "successful2.txt"
del "iplist1.txt"
del "iplist2.txt"
echo File cleanup complete!
echo Cleaning up text files.

:: Define the input and output files
set inputFile="successful.txt"
set outputFile="successfultemp.txt"

:: Clear the output file to avoid appending to old data
echo. > %outputFile%

:: Read through each line in the input file
for /f "usebackq tokens=*" %%A in (%inputFile%) do (
    if not "%%A"=="" echo %%A >> %outputFile%
)

echo Blank lines removed. Cleaned file saved as %outputFile%.

:: Define the input and output files
set inputFile="error.txt"
set outputFile="errortemp.txt"

:: Clear the output file to avoid appending to old data
echo. > %outputFile%

:: Read through each line in the input file
for /f "usebackq tokens=*" %%A in (%inputFile%) do (
    if not "%%A"=="" echo %%A >> %outputFile%
)

echo Blank lines removed. Cleaned file saved as %outputFile%.

REM Convert successful.txt to pingreturned.csv
set "inputFile=successfultemp.txt"
set "outputFile=pingreturned.csv"
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

REM Convert successful.txt to processed.csv
set "inputFile=errortemp.txt"
set "outputFile=noreply.csv"
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
del "successfultemp.txt"
del "error1.txt"
del "error2.txt"
del "errortemp.txt"
echo Stage 2 complete.
pause
exit