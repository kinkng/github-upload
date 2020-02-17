*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywordsPython/UserKeywords.py

*** Variables ***


*** Keywords ***
Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create folder  ${foldername}
    create sub folder  ${subfoldername}
    Log  "Task Done Successfully"


Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate two values  ${username}  ${password}
    Log  ${resultval}
