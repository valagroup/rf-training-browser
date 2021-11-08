*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Suite Setup      Open page to url    ${URL}
Suite Teardown   Close Browser

*** Test Cases ***
Verify title
   [Tags]     demo
   [Documentation]    We will verify that the web page has correct title.
   Get title   *=    Haaga-Helia

This test will fail
   [Tags]     demo
   Get title    ==    Haaga-Helia
