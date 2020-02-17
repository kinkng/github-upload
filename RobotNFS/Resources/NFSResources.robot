*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://www.thetestingworld.com/testings
${Browser}  Chrome

*** Keywords ***
Global Start Browser and Maximize
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    [Return]  ${Title}