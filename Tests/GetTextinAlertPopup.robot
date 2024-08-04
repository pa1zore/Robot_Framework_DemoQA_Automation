*** Settings ***
Documentation   get text after accepting alert popup

Library     SeleniumLibrary
Resource        ../POM/Generic.robot
Resource        ../POM/LandingPage.robot
Resource        ../POM/AlertPage.robot

*** Test Cases ***
Get the text From alert Popup
    Generic.Open the broswer with landing page
    LandingPage.Click on AlertFrameandWindow box
    AlertPage.Click on alert
    AlertPage.Click on click me button and log the message
    Generic.Close browser session