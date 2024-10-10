:: Demo batch file to configure something 
:: By: Philip Stewart
:: Date: 03ct2024
:: Filename: Demo10.bat

:: This script will take a log of files being copied. It will then delete that log and create two additional files.
:: It then copies it to C:\windows (ospath) and logs any changes in a new file path C:\Users\student\Scripts from DOS\MyBackup.log


@echo off
cls
title JORs simple backup with logging
echo *******************************************
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo *******************************************

:: Create a blank file or erase it if it already exists
echo *** Demo10 Logfile *** > SimpleBackup.log
echo *** Philips LogFile *** > C:\Users\student\Scripts from DOS\logs\MyBackup.log


SET ospath=C:\Windows\
SET filename1=explorer.exe
SET filename2=DoesNotExist.exe


echo 1. Copying %filename1% >> SimpleBackup.log
copy %ospath%%filename1% %TEMP% >> SimpleBackup.log 2>&1
echo 2. Copying %filename2% >> SimpleBackup.log
copy %ospath%%filename2% %TEMP% >> SimpleBackup.log 2>&1

echo Do you want to delete some old logs? WARNING! Pressing enter will do this and create new logs.
Pause
del SimpleBackup.log /s /q >> MyBackup.log

SET Backup1=file1.txt
SET Backup2=file2.txt

echo creating %Backup1% > C:\windows\file1.txt
echo creating %Backup2% > C:\windows\file2.txt


echo 3. Copying %Backup1% >> MyBackup.log
copy %ospath%%backup1% %TEMP% >> MyBackup.log 2>&1
echo 4. Copying %Backup2% >> MyBackup.log
copy %ospath%%backup2% %TEMP% >> MyBackup.log 2>&1