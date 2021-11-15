*** Keywords ***
Open page to url
    [arguments]   ${url}
    New Browser    ${browser}   headless=true
    New Context   viewport=${VIEWPORT}
    New page   ${url}

open homepage and accept cookies
    Open page to url    ${URL}
    accept cookies

accept cookies
    Click    ${AcceptCookies}
