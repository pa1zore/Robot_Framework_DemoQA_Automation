*** Settings ***
Documentation   This is text box page
Resource    LandingPage.robot

*** Variables ***
${product_name}=     Text Box
${textboxelement}=      xpath://ul/li/span[text()='Text Box']
${fillusername}=        userName
${fillemail}=       userEmail
${fillcurentadd}=       currentAddress
${fillpermanantadd}=        permanentAddress
${validateusername}=        xpath://p[@id='name']
${validateemail}=       xpath://p[@id='email']
${validatecurrentadd}=      xpath://p[@id='currentAddress']
${validatepermanentadd}=        xpath://p[@id='permanentAddress']


*** Keywords ***
select the text box option
          #Execute Javascript   window.scrollTo(0,-document.body.scrollHeight)
         Click Element       ${textboxelement}      #click on add product to card


         

fill the details from external files and submit
    [Arguments]     ${Full_Name}     ${Email}        ${Current_Address}       ${Permanent_Address}
        Input Text      ${fillusername}        ${Full_Name}
        Input Text        ${fillemail}    ${Email}
        Input Text    ${fillcurentadd}    ${Current_Address}
        Input Text    ${fillpermanantadd}    ${Permanent_Address}
        Execute Javascript   window.scrollTo(0,500)
        Click Button    submit
        Execute Javascript   window.scrollTo(0,500)
validate same data is filled or not
    [Arguments]     ${Full_Name}     ${Email}        ${Current_Address}       ${Permanent_Address}
    Element Should Contain    ${validateusername}    ${Full_Name}
    Element Should Contain    ${validateemail}    ${Email}
    Element Should Contain    ${validatecurrentadd}    ${Current_Address}
    Element Should Contain    ${validatepermanentadd}    ${Permanent_Address}