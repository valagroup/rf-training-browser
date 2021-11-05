*** Keywords ***
Open page to url
    [arguments]   ${URL}
    New Browser    ${browser}    ${HEADLESS_VALUE}
    New Context   viewport=${VIEWPORT}
    New page   ${URL}

Hae etusivulta
    [Arguments]    ${Teksti}
    Click    ${HakuValikko}
    type text    ${HakuKentta}    ${Teksti}
    Click    ${EtsiNappula}