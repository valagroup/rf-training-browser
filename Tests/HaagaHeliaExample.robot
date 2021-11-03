*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Resource        ../Variables/Locators.robot
Suite Setup      Open page to url    ${URL}
Suite Teardown   Close Browser

*** Test Cases ***
Ilmoittautumislomake
    Hae etusivulta    Testaus
    Click    //*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelectionWrapper"]/a[1]
    Click    //span[contains(text(),"Tietojenkäsittely, avoin amk")]   force=True
    Click    //a[contains(text(),"Ilmoittautuminen")]
    Click    //button//div[contains(text(),"Uusien opiskelijoiden ilmoittautumislomakkeet")]
    Click    //a[contains(text(),"479")]
    ${Text}=    get text    id=displayName
    should be equal    ${Text}    Haaga-Helia E-lomake