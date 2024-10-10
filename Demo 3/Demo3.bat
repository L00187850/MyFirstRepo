:: Demo batch file to configure something 
:: By: Philip Stewart
:: Initial file: Demo3
:: Filename: Demo3.bat

@echo off
cls
title Philips pause test with user input
echo "*******************************************"
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo "*******************************************"
echo
echo *** What is your name? ***
SET /p  userName=Enter your Name: 
echo *** Hello %userName% ***
pause 