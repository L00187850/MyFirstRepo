:: Demo batch file to configure something 
:: By: Philip Stewart
:: Date: 03Oct2024
:: Filename: Demo11.bat

:: This script will not just show what files are in a directory, it also displays and counts the files in the directory as well as also displaying and counting the number of directories in C:\users\Student.
:: It then take these results and puts them into a log file found in "C:\Users\student\Scripts from DOS" titled "MyResults.log"

@echo off
cls
title Philips file and directory counter.
echo *******************************************
echo this bat file will count files and directories. It will also display them and show the total number of files at the bottom.
:: it adds a section within the for loop called fileCount and dirCount, which begin with a zero value. with each file or directory its value is incremented by 1.

echo Press enter to start the script.
echo *******************************************

pause
:: echo creating log file > "C:\Users\student\Scripts from DOS\demo 11\MyResults.log"
SET OutputFile="MyResults.log"
:: Setting Variables for file count and directory count.
set fileCount=0
set dirCount=0

:: Iterate through all the files in the current directory
echo Analysing %CD%
FOR %%I IN (*) DO (@ECHO Filename=%%I
	set /a fileCount+=1
)

echo *******************************************
echo Total Files in directory: %fileCount% >>%OutputFile%
echo Total Files in directory: %fileCount%
echo *******************************************
pause
echo *******************************************
:: The environment variable USERPROFILE points at the users home folder
echo Analysing %USERPROFILE% for directories
FOR /D %%I IN (%USERPROFILE%"\*") DO (@ECHO %%I
		set /a dirCount+=1
		
)
echo *******************************************

echo *******************************************
echo Total Directories: %dirCount% >> %OutputFile%
echo Total Directories: %dirCount%
echo *******************************************

pause

