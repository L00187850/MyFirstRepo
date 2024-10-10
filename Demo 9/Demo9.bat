:: Demo batch file to configure something 
:: By: Philip Stewart
:: Initial file: 03OCT24
:: Filename: Demo9.bat


:: This script creates two files "TestFile.txt" and "TestFile2.txt" in the file path C:\windows. It then copies them two files to the %TEMP% folder.
:: It attempts to copy the third then fails as it doesn't exist. It then deletes the original "TestFile.txt" from the original directory in "C:\windows"
@echo off
cls
title Philips Error Tester v2


echo *******************************************
echo This is a sample text file > c:\windows\testfile.txt
echo creating another text file > c:\windows\testfile2.txt
echo files created in C:\windows. Look in the filepath for testfile.txt and testfile2.txt at this point.
echo press enter to continue
echo *******************************************
pause


SET ospath=C:\Windows\
SET filename1=testfile.txt
SET filename2=testfile2.txt
SET filename3=testfile3.txt


copy %ospath%%filename1% %TEMP% && echo Copy of %filename1% worked!
copy %ospath%%filename2% %TEMP% && echo Copy of %filename2% worked!
:: check the temp directory at this point at C:\Users\%username%\AppData\Local\Temp\2
echo.
echo.
copy %ospath%%filename2% %TEMP% || echo Copy of %filename2% failed!

echo Press enter to delete %filename1%
Pause
del %ospath%%filename1% /s /q
echo Original file %filename1% deleted!

echo Press enter to exit
pause