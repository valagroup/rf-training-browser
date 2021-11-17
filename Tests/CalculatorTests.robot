*** Settings ***
Library         Browser
Library         ../Libraries/TestLibrary.py
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Resource        ../Keywords/SetupKeywords.robot
Resource        ../Keywords/CalculatorKeywords.robot
Resource        ../Variables/CalculatorLocators.robot
Suite Setup      open calculator and accept cookies
Suite Teardown   Close Browser


*** Test Cases ***
do a simple sum
    [Tags]   sum
    [Setup]    setup two numbers for sum    2    5
    calculate sum for first and second number
    get result from page
    sum result should be correct

do simple sum with numbers from python
    [Tags]    sum_python
    [Setup]   setup numbers for sum with python
    calculate sum for first and second number
    get result from page
    sum result should match sums.txt file    0

template test for sums
    [Tags]    sum_template
    [Template]    test calculating sum of two numbers
    2    3
    1    2
    4    5

template test for sums
    [Tags]    sum_template_python
    [Setup]    set list length as variable
    [Template]    test calculating values from numbers.txt
    FOR   ${index}    IN RANGE    ${LIST_LENGTH}
          ${index}
    END
