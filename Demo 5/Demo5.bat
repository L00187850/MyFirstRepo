:: Demo batch file to configure something 
:: By: Philip Stewart
:: DATE: 03OCT24
:: Filename: Demo5.bat

:: This bat file uses both variables and arguments to allow the user to input their name, age and their country.
@echo off
:: cls

:: This part creates variables for the user to input information
set /p userName=Enter your Name: 
set /p userAge=How Old are You?: 
set /p userCountry=What country do you live in?: 

:: This part is displaying the paramters

if not "%1"=="" (
    echo My name is %1
) 

if not "%2"=="" (
    echo My age is %2
)

if not "%3"=="" (
    echo I live in %3
)


:: This part is allowing the user to pass parameters
Title Philip Stewart's Argument Test
echo *******************************************
echo My name is:  %userName%
echo My age is:   %userAge%
echo I live in:   %userCountry%
echo *******************************************
pause
