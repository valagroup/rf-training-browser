*** Keywords ***
Open page to url
    [arguments]   ${url}
    Set Browser Timeout    20s
    New Browser    ${browser}    ${HEADLESS_VALUE}
    New Context   viewport=${VIEWPORT}
    New page   ${url}

open homepage and accept cookies
    Open page to url    ${URL}
    accept cookies

accept cookies
    Click    ${AcceptCookies}
