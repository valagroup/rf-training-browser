*** Keywords ***
calculate sum for first and second number
    Click     ${FIRST_NUMBER_BUTTON}
    Click     ${SumButton}
    Click     ${SECOND_NUMBER_BUTTON}
    Click     ${ResolveButton}

get result from page
    Click     ${ResolveButton}
    Sleep   2
    ${value_on_page}=     Get Attribute    ${ResultField}    title
    Set Test Variable    ${RESULT_ON_PAGE}    ${value_on_page}

sum result should be correct
    calculate sum of two numbers    ${FIRST_NUMBER}    ${SECOND_NUMBER}
    Should Be Equal     ${RESULT_ON_PAGE}    ${SUM}

sum result should match sums.txt file
    [Arguments]    ${index}
    ${sum}=    Get result at index   ${index}
    Should Be Equal    ${sum}    ${RESULT_ON_PAGE}


calculate sum of two numbers
   [Arguments]    ${first_number}   ${second_number}
   ${sum_of_numbers}=     Evaluate    ${first_number} + ${second_number}
   ${sum_of_numbers}=     Convert To String    ${sum_of_numbers}
   Set Test Variable    ${SUM}    ${sum_of_numbers}


test calculating sum of two numbers
   [Arguments]   ${first_number}    ${second_number}
   New Page    ${CALCULATOR_URL}
   setup two numbers for sum    ${first_number}    ${second_number}
   calculate sum for first and second number
   get result from page
   sum result should be correct
   Close Page

test calculating values from numbers.txt
    [Arguments]    ${index}
    New Page    ${CALCULATOR_URL}
    ${first_number}    ${second_number}      Get number pair at index    ${index}
    setup two numbers for sum    ${first_number}    ${second_number}
    calculate sum for first and second number
    get result from page
    sum result should match sums.txt file    ${index}
    Close Page
