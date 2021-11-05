*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Suite Setup      Open page to url    ${URL}
Suite Teardown   Close Browser

*** Test Cases ***
Verify title
   [Documentation]    We will verify that the web page has correct title.
   ${title}=    Get title
   Should Be Equal As Strings   ${title}   Robot Framework

This test will fail
   ${title}=    Get title
   Should Be Equal As Strings   ${title}   Robot Frame
