*** Settings ***
Library     SeleniumLibrary
Resource     ../Automation/Testcases/Automation-Jenkins/DDT.robot
Library     DataDriver      ../Automation/TestData/LoginData.xlsx

Suite Setup     Open Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login

*** Test Cases ***



*** Keywords ***
Invalid Login
    [Arguments] ${Username} ${Password}
    Input Username  ${Username}
    Input Password  ${Password}
    Click Login
    Error Message will be visble

