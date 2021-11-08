*** Variables ***
${AcceptCookies}         //*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelectionWrapper"]/a[1]

${SearchDropdown}        id=quick-search-dropdown
${SearchField}           id=quick-search
${SearchButton}          //input[@value="Etsi"]
${ResultsField}          //*[contains(@class, 'view-display-id-search')]
${SearchResultLink}      //*[contains(text(),"Tietojenkäsittely, avoin amk")]

${RegisterButton}        //a[contains(text(),"Ilmoittautuminen")]
${NewStudentFormsDropdown}    id=accordion-control-2948
${NewStudentTuitionFormLink}    //a[contains(text(),"479")]
