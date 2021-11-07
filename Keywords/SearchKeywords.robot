*** Keywords ***
user searches for a course
    search for text     ${COURSE_NAME}
    user is on results page

user selects correct search result
    Click    ${SearchResultLink}    force=True

user opens registration form for new students with tuition
    Click   ${RegisterButton}
    Click   ${NewStudentFormsDropdown}
    Click   ${NewStudentTuitionFormLink}

user should be on identify page
    ${Text}=    get text    id=displayName    ==    ${IDENTIFY_PAGE_HEADER}

search for text
    [Arguments]    ${text}
    Click    ${SearchDropdown}
    Fill Text    ${SearchField}    ${text}
    Click    ${SearchButton}

user is on results page
    Focus    ${ResultsField}
