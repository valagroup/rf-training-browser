*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Resource        ../Keywords/SearchKeywords.robot
Resource        ../Variables/Locators.robot
Suite Teardown   Close Browser

*** Test Cases ***
sign up for course
    [Tags]    search
    [Setup]   open homepage and accept cookies
    Given user searches for a course
    When user selects correct search result
         user opens registration form for new students with tuition
    Then user should be on identify page
