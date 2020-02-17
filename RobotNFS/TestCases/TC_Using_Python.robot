*** Settings ***
Resource  ../Resources/NFSResourcesPython.robot
*** Variables ***


*** Keywords ***

*** Test Cases ***
Testcase create folder
    Create folder at runtime  HELLO1234  Testing

    Concatenate Username and Password  Testing  World