*** Variables ***
${AcceptCookies}         //*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelectionWrapper"]/a[1]

${SearchDropdown}        id=quick-search-dropdown
${SearchField}           id=quick-search
${SearchButton}          //input[@value="Etsi"]
${ResultsField}          //*[contains(@class, 'view-display-id-search')]
${SearchResultLink}      //*[contains(text(),"Tietojenkäsittely, avoin amk")]

${RegisterButton}        //a[contains(text(),"Ilmoittautuminen")]
${NewStudentFormsDropdown}    //*[contains(text(),"Uusien opiskelijoiden ilmoittautumislomakkeet")]
${NewStudentTuitionFormLink}    //a[contains(text(),"479")]
