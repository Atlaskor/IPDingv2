@echo off
setlocal enabledelayedexpansion

rem Input and output CSV file names
set inputFile=flat-ap-data.csv
set outputFile=output.csv

rem Check if input file exists
if not exist "%inputFile%" (
    echo Input file "%inputFile%" does not exist.
    exit /b
)

rem Initialize the output file
echo Device Type,True Channel Width (MHz) > "%outputFile%"

rem Read the input file line by line
for /f "usebackq tokens=8,* delims=," %%a in ("%inputFile%") do (
    set "col8=%%a"
    set "col22=%%b"

    rem Trim spaces from col22
    for /f "tokens=* delims= " %%x in ("!col22!") do set "col22=%%x"

    echo !col8!,!col22! >> "%outputFile%"
)

echo Columns extracted to "%outputFile%"
endlocal