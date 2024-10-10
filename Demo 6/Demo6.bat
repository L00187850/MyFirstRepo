:: Demo batch file to configure something 
:: By: Philip Stewart
:: Date: 03OCT24
:: Filename: Demo6.bat

:: This script will prompt the user for values while the bat file is running. It will also ask for the persons date of birth and country of birth.
@echo off
cls
title Philips User Prompt test
set /p NAME=What is your name? 
echo Your name is %NAME%
cls
set /p DOB=When were you born? 
echo Your name is %DOB%
cls
set /p CountryBirth=What country were you born in? 
echo Your Country of Birth is %CountryBirth%
cls

echo *******************************************
Echo You have provided the following information:
Echo Name: %NAME%
Echo Date of Birth: %DOB% 
Echo Country of Birth: %CountryBirth%
echo *******************************************
pause