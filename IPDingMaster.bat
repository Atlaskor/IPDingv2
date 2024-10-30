@echo off
setlocal enabledelayedexpansion

REM Check if the file iplist.txt exists
if not exist iplist.txt (
    echo IP list file not found.
    echo > "iplist.txt"
    echo File created.
)

REM Split the IP list into two files
set splitCount=0
for /f "tokens=*" %%A in (iplist.txt) do (
    set /a splitCount+=1
)

REM Calculate half the number of entries
set /a halfCount=(splitCount + 1) / 2

REM Divide the IP addresses into eight files: iplist1.txt iplist2.txt iplist3.txt iplist4.txt iplist5.txt iplist6.txt iplist7.txt iplist8.txt
set counter=0
(for /f "tokens=*" %%A in (iplist.txt) do (
    set /a counter+=1
    set /a fileNumber=!counter! %% 8 + 1
    echo %%A >> iplist!fileNumber!.txt
))
::Begin summoning ping windows.
echo Ping operations started in separate Command Prompt windows.
start "IPDing Window One" "IPDingv2.bat"
start "IPDing Window Two" "IPDingv2N2.bat"
start "IPDing Window One" "IPDingv2N3.bat"
start "IPDing Window Two" "IPDingv2N4.bat"
start "IPDing Window One" "IPDingv2N5.bat"
start "IPDing Window Two" "IPDingv2N6.bat"
start "IPDing Window One" "IPDingv2N7.bat"
start "IPDing Window Two" "IPDingv2N8.bat"
::Must pause for pings to complete before moving on.
echo DO NOT MOVE ON UNTIL PINGS ARE COMPLETE!
pause
::Begin combination of files.
echo Ping operations complete, compiling data.
set suc1="successful1.txt"
set suc2="successful2.txt"
set suc3="successful3.txt"
set suc4="successful4.txt"
set suc5="successful5.txt"
set suc6="successful6.txt"
set suc7="successful7.txt"
set suc8="successful8.txt"
set comb="successful.txt"
echo. > %comb%
type %suc1% >> %comb%
type %suc2% >> %comb%
type %suc3% >> %comb%
type %suc4% >> %comb%
type %suc5% >> %comb%
type %suc6% >> %comb%
type %suc7% >> %comb%
type %suc8% >> %comb%
::First half of combination complete.
echo Files half combined. 
set suc1="error1.txt"
set suc2="error2.txt"
set suc3="error3.txt"
set suc4="error4.txt"
set suc5="error5.txt"
set suc6="error6.txt"
set suc7="error7.txt"
set suc8="error8.txt"
set comb="error.txt"
echo. > %comb%
type %suc1% >> %comb%
type %suc2% >> %comb%
type %suc3% >> %comb%
type %suc4% >> %comb%
type %suc5% >> %comb%
type %suc6% >> %comb%
type %suc7% >> %comb%
type %suc8% >> %comb%
echo Files combined.
::File combination completed.
del "successful1.txt"
del "successful2.txt"
del "successful3.txt"
del "successful4.txt"
del "successful5.txt"
del "successful6.txt"
del "successful7.txt"
del "successful8.txt"
del "iplist1.txt"
del "iplist2.txt"
del "iplist3.txt"
del "iplist4.txt"
del "iplist5.txt"
del "iplist6.txt"
del "iplist7.txt"
del "iplist8.txt"
del "error1.txt"
del "error2.txt"
del "error3.txt"
del "error4.txt"
del "error5.txt"
del "error6.txt"
del "error7.txt"
del "error8.txt"
echo File cleanup complete!
echo Formatting and converting text files to CSV.

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
del "errortemp.txt"
del "successful.txt"
del "error.txt"
echo Final file cleanup completed.
echo Stage 2 complete.
pause
exit
