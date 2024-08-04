*** Settings ***
Documentation   this is alert page

Library     SeleniumLibrary
Resource        ../POM/Generic.robot
Resource        ../POM/LandingPage.robot
*** Variables ***
${Alertbox}=        xpath://li/span[text()='Alerts']
*** Keywords ***
Click on alert 
    Click Element    ${Alertbox}
    
Click on click me button and log the message
    Click Button    confirmButton
    Handle Alert    ACCEPT
   ${result}=    Get Text    confirmResult
   Log    ${result}
   Log To Console    ${result}