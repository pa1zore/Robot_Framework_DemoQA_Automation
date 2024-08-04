*** Settings ***
Documentation   this is generic file
Library     SeleniumLibrary
Library     OperatingSystem
*** Variables ***
${URL}=     https://demoqa.com/

*** Keywords ***
Open the broswer with landing page
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To    ${URL}
Close browser session
    Close Browser