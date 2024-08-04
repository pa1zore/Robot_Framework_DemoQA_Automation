*** Settings ***
Documentation   this is frames documentation
Library    SeleniumLibrary
*** Variables ***
${frame1text}=      This is a sample page
${framebox}=        xpath://span[text()='Frames']
${textInframe}=     id:sampleHeading
*** Keywords ***
Click on frames botton
    Click Element      ${framebox}
Select first frame and get text
    Select Frame    frame1
    ${actualframe1text}=        Get Text    ${textInframe}
    Log    ${actualframe1text}
    Log To Console    ${actualframe1text}
    Unselect Frame

Select second frame and get text
    Select Frame    frame2
    ${actualframe2text}=        Get Text    ${textInframe}
    Log To Console    ${actualframe2text}
    Log    ${actualframe2text}
    Unselect Frame
