*** Keywords ***
Open page to url
    [arguments]   ${URL}
    New Browser    ${BROWSER}    ${HEADLESS_VALUE}
    New Context   viewport=${VIEWPORT}
    New Page   ${URL}