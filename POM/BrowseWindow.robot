*** Settings ***
Documentation   this is alert page

Library     SeleniumLibrary
*** Variables ***
${browseWindowbox}=     xpath://li/span[text()='Browser Windows']
${headingText}=     id:sampleHeading
*** Keywords ***
Click on browse window element
    Click Element       ${browseWindowbox}
    Click Button    tabButton
    Sleep    3
Switch to new window and get text from new window
    Switch Window   NEW
    ${newWindowText}=   Get Text    ${headingText}
    Log To Console    ${newWindowText}
    Log    ${newWindowText}
    Switch Window   MAIN