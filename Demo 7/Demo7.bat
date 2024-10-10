:: Demo batch file to configure something 
:: By: Philip Stewart
:: Initial file: 03OCT2024
:: Filename: Demo7.bat

rem This script will attempt to find a file in C:\windows and also tell you if it doesn't exist. It will also loop back to the beginning of the script and ask for another file.
@echo off
cls
title Philip's Find a File and also to determine if it exists in "C:\windows"
echo *******************************************
echo please hit enter to begin the script
echo *******************************************

pause

SET ospath=C:\Windows\
:loop
set /p filename=Enter the filename you want to search for: 

:: Check if the file exists
if exist "%ospath%%filename%" (
    echo %filename% exists in %ospath%
    goto loop
) else (
    echo %filename% does not exist in %ospath%
    echo please look again. Make sure your adding the file format such as exe, dll etc
    goto loop
)

pause