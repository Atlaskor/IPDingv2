@echo off
setlocal enabledelayedexpansion

set "input_file=down.csv"
set "output_file=iplist.txt"

rem Check if the input file exists
if not exist "%input_file%" (
    echo File "%input_file%" not found!
	pause
    exit /b
)

rem Clear the output file if it exists, or create a new one
> "%output_file%" echo.

rem Define a regex-like pattern to check IP validity
for /f "skip=1 tokens=5 delims=," %%e in (%input_file%) do (
    set "ip=%%e"
    rem Remove double quotes from the IP address
    set "ip=!ip:"=!"
    
    rem Check if the IP format is valid
    for /f "tokens=1-4 delims=." %%a in ("!ip!") do (
        if "%%d" NEQ "" (
            if %%a GEQ 0 if %%a LEQ 255 if %%b GEQ 0 if %%b LEQ 255 if %%c GEQ 0 if %%c LEQ 255 if %%d GEQ 0 if %%d LEQ 255 (
                echo !ip! >> "%output_file%"
            )
        )
    )
)

echo Only valid IPs extracted to "%output_file%".

endlocal
exit