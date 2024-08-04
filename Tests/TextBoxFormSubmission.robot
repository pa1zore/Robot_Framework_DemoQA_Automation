*** Settings ***
Documentation       fill the form and check wheather same details is filled or not
Library     SeleniumLibrary
Library     DataDriver      ../TestData/TestData.xlsx      encoding=utf_8      dialect=unix
Resource    ../POM/Generic.robot
Resource    ../POM/LandingPage.robot
Resource    ../POM/TextBoxPage.robot
Test Template       fill the complete form and validate with same data
*** Test Cases ***
fill the form with details ${TestCaseId}

*** Keywords ***
fill the complete form and validate with same data
    [Arguments]     ${Full_Name}     ${Email}        ${Current_Address}       ${Permanent_Address}
    Generic.Open the broswer with landing page
    LandingPage.Click on Elements box
    TextBoxPage.select the text box option
    TextBoxPage.fill the details from external files and submit    ${Full_Name}    ${Email}    ${Current_Address}    ${Permanent_Address}
    TextBoxPage.validate same data is filled or not     ${Full_Name}    ${Email}    ${Current_Address}    ${Permanent_Address}
    Generic.Close browser session
