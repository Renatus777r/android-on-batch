@ECHO off
cls
if exist kernel.bat (
    :start
    ECHO Android Recovery - version BATCH
    ECHO 1. factory reset
    ECHO 2. power off
    ECHO 3. wipe data (if no data file then it create file data)
    set /p choice=Type the option: 
    if '%choice%'=='' ECHO "%choice%" is not valid please try again
    if '%choice%'=='1' goto hello
    if '%choice%'=='2' goto bye
    if '%choice%'=='3' goto test
    ECHO.
    goto start
    :ERORR
    ECHO An erorr in recovery mode. This can shows in factory reset or wipe data
    pause
   goto start
   :hello
   ECHO confirm the factory reset:
   ECHO 1. yes
   ECHO 2. no
   set /p factoryoption=option: 
   goto ERORR
   goto end
   :bye
   ECHO BYE
   goto end
   :test
   ECHO TEST
   echo DATA.nothon0:!>data.doa
   ECHO wipe data completed (or data wiped and file data created)
   ECHO typing also other in data file
   echo data.code(2128)>data.doa
   ECHO complete
   pause
   goto start
   :end
   ECHO press a key volume up to power off device
   pause
   exit
) else (
    echo NO KERNEL
    pause
    exit
)