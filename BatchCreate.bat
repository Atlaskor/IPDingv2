@echo off
setlocal EnableDelayedExpansion
REM This script creates another batch file called GeneratedScript.bat
set "rep=%%%%A"
REM Define the target batch file name
set "output=IPDingv2.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist1.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist1.txt "
set "line6=) "
set "line7=echo. > successful1.txt"
set "line8=echo. > error1.txt"
set "line9=for /f "tokens=*" %rep% in (iplist1.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error1.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful1.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 1 created: %output%

REM Define the target batch file name
set "output=IPDingv2N2.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist2.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist2.txt "
set "line6=) "
set "line7=echo. > successful2.txt"
set "line8=echo. > error2.txt"
set "line9=for /f "tokens=*" %rep% in (iplist2.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error2.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful2.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 2 created: %output%

REM Define the target batch file name
set "output=IPDingv2N3.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist3.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist3.txt "
set "line6=) "
set "line7=echo. > successful3.txt"
set "line8=echo. > error3.txt"
set "line9=for /f "tokens=*" %rep% in (iplist3.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error3.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful3.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 3 created: %output%

REM Define the target batch file name
set "output=IPDingv2N4.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist4.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist4.txt "
set "line6=) "
set "line7=echo. > successful4.txt"
set "line8=echo. > error4.txt"
set "line9=for /f "tokens=*" %rep% in (iplist4.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error4.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful4.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 4 created: %output%

REM Define the target batch file name
set "output=IPDingv2N5.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist5.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist5.txt "
set "line6=) "
set "line7=echo. > successful5.txt"
set "line8=echo. > error5.txt"
set "line9=for /f "tokens=*" %rep% in (iplist5.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error5.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful5.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 5 created: %output%

REM Define the target batch file name
set "output=IPDingv2N6.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist6.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist6.txt "
set "line6=) "
set "line7=echo. > successful6.txt"
set "line8=echo. > error6.txt"
set "line9=for /f "tokens=*" %rep% in (iplist6.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error6.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful6.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 6 created: %output%

REM Define the target batch file name
set "output=IPDingv2N7.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist7.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist7.txt "
set "line6=) "
set "line7=echo. > successful7.txt"
set "line8=echo. > error7.txt"
set "line9=for /f "tokens=*" %rep% in (iplist7.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error7.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful7.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 7 created: %output%

REM Define the target batch file name
set "output=IPDingv2N8.bat"

set "line1=@echo off"
set "line2=setlocal enabledelayedexpansion"
set "line3=if not exist iplist8.txt ("
set "line4=    echo IP list file not found. "
set "line5=    ^echo. ^> iplist8.txt "
set "line6=) "
set "line7=echo. > successful8.txt"
set "line8=echo. > error8.txt"
set "line9=for /f "tokens=*" %rep% in (iplist8.txt) do ( "
set "line10=    set ip=%rep%"
set "line11=echo Pinging !ip!"
set "line12=    ping !ip! -n 1 | find "TTL" > nul "
set "line13=    if errorlevel 1 ( "
set "line14=        echo !ip! did not reply "
set "line15=        ^echo !ip! ^>^> error8.txt"
set "line16=    ) else ("
set "line17=        echo !ip! replied"
set "line18=        ^echo !ip! ^>^> successful8.txt"
set "line19=    )"
set "line20=    echo."
set "line21=) "
set "line22=echo Step 1 complete."
set "line23=exit "

echo %line1% >> %output%
echo %line2% >> %output%
echo %line3% >> %output%
echo %line4% >> %output%
echo %line5% >> %output%
echo %line6% >> %output%
echo %line7% >> %output%
echo %line8% >> %output%
echo %line9% >> %output%
echo %line10% >> %output%
echo %line11% >> %output%
echo %line12% >> %output%
echo %line13% >> %output%
echo %line14% >> %output%
echo %line15% >> %output%
echo %line16% >> %output%
echo %line17% >> %output%
echo %line18% >> %output%
echo %line19% >> %output%
echo %line20% >> %output%
echo %line21% >> %output%
echo %line22% >> %output%
echo %line23% >> %output%

echo Batch file 8 created: %output%