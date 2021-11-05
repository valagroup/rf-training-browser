*** Keywords ***
open page to url
    [arguments]   ${url}
    New Browser    ${browser}    ${headlessValue}
    New Context   viewport=${viewport}
    New page   ${url}
