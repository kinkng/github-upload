*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Start Browser
    Open Browser  http://www.thetestingworld.com/testings  Chrome


Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser