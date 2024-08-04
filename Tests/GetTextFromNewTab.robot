*** Settings ***
Documentation       get text from the new tab
Library     SeleniumLibrary
Resource    ../POM/Generic.robot
Resource    ../POM/LandingPage.robot
Resource    ../POM/BrowseWindow.robot

*** Test Cases ***
Get the text from the New tab and log it on console
    Generic.Open the broswer with landing page
    LandingPage.Click on AlertFrameandWindow box
    BrowseWindow.Click on browse window element
    BrowseWindow.Switch to new window and get text from new window
    Generic.Close browser session


