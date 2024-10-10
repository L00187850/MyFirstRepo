:: Demo batch file to configure something 
:: By: Philip Stewart
:: Date: 03OCT24
:: Filename: Demo4.bat

@echo off
cls
title Philips Variable Test
rem this script adds a variable called "Filepath" and "FolderName" and runs a calculation (multiply) at the end before pausing.
echo *******************************************
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo *******************************************

echo *** About to do something critical ***
echo *** press [ctrl][c] to exit or any key to continue ***
pause 

SETLOCAL

SET filepath=G:\Program Files\Notepad++\
SET FolderName=Notepad++.exe
echo Path to Folder is %filepath%%FolderName%

SET /A calculation=9*21/3
echo We got %calculation%

ENDLOCAL

PAUSE