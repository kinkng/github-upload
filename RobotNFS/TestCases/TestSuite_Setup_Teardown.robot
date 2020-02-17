*** Settings ***
Documentation  This testcase is used as an example of using setup and teardown on a test suite level

Library  SeleniumLibrary
Resource  ../Resources/NFSResources2.robot

Test Setup  Start Browser
Test Teardown  Close Browser Window


*** Variables ***
${Browser}  Firefox
${URL}  http://www.thetestingworld.com/testings


*** Keywords ***


*** Test Cases ***
Test Case 1
    Input Text  name:fld_username  TestingWorld
    Input Text  name:fld_email  kinkng@gmail.com
    Input Text  name:fld_password  123456

Test Case 2
    Select Radio Button  add_type  office