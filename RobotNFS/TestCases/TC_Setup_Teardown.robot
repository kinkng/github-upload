*** Settings ***
Documentation  This testcase is used as an example of using setup and teardown on an individual testcase level

Library  SeleniumLibrary
Resource  ../Resources/NFSResources2.robot


*** Variables ***
${Browser}  Firefox
${URL}  http://www.thetestingworld.com/testings


*** Keywords ***


*** Test Cases ***
Test Case 1
    [Setup]  Start Browser
    [Teardown]  Close Browser Window
    Input Text  name:fld_username  TestingWorld
    Input Text  name:fld_email  kinkng@gmail.com
    Input Text  name:fld_password  123456


