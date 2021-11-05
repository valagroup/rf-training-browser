*** Keywords ***
Open page to url
    [arguments]   ${URL}
    Set Browser Timeout    20s
    New Browser    ${browser}    ${HEADLESS_VALUE}
    New Context   viewport=${VIEWPORT}
    New page   ${URL}

Hae etusivulta
    [Arguments]    ${Teksti}
    Click    ${HakuValikko}
    Fill Text    ${HakuKentta}    ${Teksti}
    Click    ${EtsiNappula}