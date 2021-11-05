*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Suite Setup      Open page to url    ${URL}
Suite Teardown   Close Browser

*** Test Cases ***
