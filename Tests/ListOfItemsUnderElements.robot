*** Settings ***
Documentation   get all the list of elements under element box
Library     SeleniumLibrary
Resource    ../POM/Generic.robot
Resource    ../POM/LandingPage.robot

*** Test Cases ***
Get List of Item under Elements
    Generic.Open the broswer with landing page
    LandingPage.Click on Elements box
    LandingPage.Store all the values under elements box
    LandingPage.Show all the value on logs and console
    Generic.Close browser session


