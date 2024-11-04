@echo off
setlocal enabledelayedexpansion

set "rep=%%%%A"

set "output=IPDingv2.bat"

set "start1=@echo off"
set "start2=setlocal enabledelayedexpansion"
set "line1=if not exist iplist1.txt ("
set "line2=    echo IP list file not found."
set "line3=    echo. > iplist1.txt"
set "line4=)"
set "line5=echo. ^> successful1.txt"
set "line6=echo. ^> error1.txt"
set "line7=for /f "tokens=*" %rep% in (iplist1.txt) do ("
set "line8=    set ip=%rep%"
setlocal DisableDelayedExpansion
set "line9=    echo Pinging ^!ip^!"

echo %start1% >> %output%
echo %start2% >> %output%
echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%

setlocal enabledelayedexpansion
