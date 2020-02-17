*** Settings ***
Documentation  Testcase to use keywords, user defined keywords, resource files and return a value

Library  SeleniumLibrary
Resource  ../Resources/NFSResources.robot

*** Variables ***
${Browser}  Firefox
${URL}  http://www.thetestingworld.com/testings

*** Keywords ***
Enter Username Password Email
    [Arguments]  ${username}  ${email}  ${password}
    Input Text  name:fld_username  ${username}
    Input Text  name:fld_email  ${email}
    Input Text  name:fld_password  ${password}

*** Test Cases ***
Test Case 1
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  TestingWorld
    Input Text  xpath://input[@name='fld_email']  testingworldindia@gmail.com
    Clear Element Text  name:fld_email
    Input Text  name:fld_email  kinkng@gmail.com
    Close Browser

Test Case 2
    Open Browser  ${URL}  ${Browser}
    Input Text  name:fld_username  kinkng
    Input Text  xpath://input[@name='fld_email']  testingworldindia@gmail.com
    Clear Element Text  name:fld_email
    Input Text  name:fld_email  kinkng@yahoo.com
    Close Browser

Test Case 3
    Open Browser  ${URL}  ${Browser}
    Enter Username Password Email  kinkng  kinkng@us.ibm.com  123456

Test Case 4
    ${Res}=  Global Start Browser and Maximize  ${URL}  ${Browser}
    Log  ${Res}
    Input Text  name:fld_username  ${Res}
