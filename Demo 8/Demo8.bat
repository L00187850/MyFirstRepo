:: Demo batch file to configure something 
:: By: Philip
:: Initial file: 03Oct2024
:: Filename: Demo8.bat

rem this script will check if two numbers equal 73. Sheldon Coopers favourite number!
:: if the numbers don't equal 73 the user can try again. This is an error tester for calculations.
rem you can add a variable for 73 such as a user requested number or another value, but I love the number 73 so I used that.



@echo off
cls
title Philips Error level tester. 


echo *******************************************
echo enter to begin the script:
echo *******************************************
pause

:loop
echo can you provide two numbers which when added together give the number 73?

set /p firstNum=Enter the first number of the equation:  
set /p secondNum=Enter the second number of the equation:  
:: /a is used for multiplication, subtraction, addition etc.

set /a finalNum=firstNum + secondNum


if %finalNum%==73 (
    echo %firstNum% plus %secondNum% does equal 73!
goto loop
) else (
    echo That additon doesn't equal 73! It equals %finalNum%.
    echo Please try again.
    goto loop
)

pause