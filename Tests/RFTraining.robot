*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Suite Setup      Open page to url    ${URL}
Suite Teardown   Close Browser

*** Test Cases ***
#Tarkista, että Resource osion alta löytyy Libararies välilehdellä Browser Library ja sillä on tagi "WEB"
#Mene BUILT-IN välilehdelle ja tarkista, että DateTime kirjastolla on seuraava kuvaus "Library for date and time conversions."