:: Demo batch file to configure something 
:: By: PHilip Stewart
:: Date: 03 Oct 2024
:: Filename: Demo2.bat



:: A command structure without @echo off and "CD"-ing to the logged in users' directory 
:: The script moves directory to the users directory, then to system32, then back to user
cls
Title Philips second bat file
cd c:\users\%username%\
cd c:\windows\system32
echo This batch file will do stuff
cd c:\users\%username%\
echo This is for demonstration purposes only.


pause
