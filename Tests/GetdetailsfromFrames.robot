*** Settings ***
Documentation       to get text from the both frames
Library     SeleniumLibrary
Resource    ../POM/Generic.robot
Resource    ../POM/LandingPage.robot
Resource    ../POM/FramesPage.robot



*** Test Cases ***
Get details from both the frames
    Generic.Open the broswer with landing page
    LandingPage.Click on AlertFrameandWindow box
    FramesPage.Click on frames botton
    FramesPage.Select first frame and get text
    FramesPage.Select second frame and get text
    Generic.Close browser session
