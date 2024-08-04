*** Settings ***
Documentation   this is landing Page
Library     SeleniumLibrary
*** Variables ***
${elementsbox}=     xpath://h5[normalize-space()='Elements']
${Alertframe&windowbox}=        xpath://h5[normalize-space()='Alerts, Frame & Windows']
${menuofalllist}=        xpath://div[@class='element-list collapse show']//ul[@class='menu-list']//li
*** Keywords ***
Click on Elements box
   Execute Javascript   window.scrollTo(0,500)
   Click Element    ${elementsbox}
Store all the values under elements box
    ${ListunderElements}=       Get WebElements     ${menuofalllist}
    Set Global Variable    ${ListunderElements}
Show all the value on logs and console
    FOR    ${element}    IN    @{ListunderElements}
        Log To Console    ${element.text} 
        Log    ${element.text}  
    END

Click on AlertFrameandWindow box
   Execute Javascript   window.scrollTo(0,500)
   Click Element    ${Alertframe&windowbox}