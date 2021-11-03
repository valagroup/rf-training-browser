*** Keywords ***
Open page to url
    [arguments]   ${url}
    New Browser    ${browser}    ${headlessValue}
    New Context   viewport=${viewport}
    New page   ${url}

Hae etusivulta
    [Arguments]    ${Teksti}
    Click    ${HakuValikko}
    type text    ${HakuKentta}    ${Teksti}
    Click    ${EtsiNappula}