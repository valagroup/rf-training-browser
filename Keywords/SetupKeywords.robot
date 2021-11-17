*** Keywords ***
open calculator and accept cookies
    Open page to url    ${CALCULATOR_URL}
    accept calculator cookies

accept calculator cookies
    Click   ${ConsentButton}      force=True

setup two numbers for sum
    [Arguments]   ${first_number}    ${second_number}
    Set Test Variable    ${FIRST_NUMBER}    ${first_number}
    Set Test Variable    ${FIRST_NUMBER_BUTTON}   id=Btn${FIRST_NUMBER}
    Set Test Variable    ${SECOND_NUMBER}    ${second_number}
    Set Test Variable    ${SECOND_NUMBER_BUTTON}   id=Btn${SECOND_NUMBER}

setup numbers for sum with python
    ${first_number}    ${second_number}    Get first number pair
    setup two numbers for sum    ${first_number}    ${second_number}


set list length as variable
    ${length}    Get list length
    Set Suite Variable    ${LIST_LENGTH}    ${length}
