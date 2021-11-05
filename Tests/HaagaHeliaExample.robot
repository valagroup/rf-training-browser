*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Resource        ../Variables/Locators.robot
Suite Setup      Open page to url    ${URL}
Suite Teardown   Close Browser

*** Test Cases ***
Ilmoittautumislomake
    Hae etusivulta    tietojenkäsittely avoin amk
    #Hyväksy evästeet
    Click    //*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelectionWrapper"]/a[1]
    #Navigoi lomakkeelle
    Click    //span[contains(text(),"Tietojenkäsittely, avoin amk")]   force=True
    Click    //a[contains(text(),"Ilmoittautuminen")]
    Click    //button//div[contains(text(),"Uusien opiskelijoiden ilmoittautumislomakkeet")]
    Click    //a[contains(text(),"479")]
    ${Text}=    get text    id=displayName
    Should Be Equal    ${Text}    Haaga-Helia E-lomake