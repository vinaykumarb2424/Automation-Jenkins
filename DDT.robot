*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Browser}  chrome
${Url}  https://admin-demo.nopcommerce.com



*** Keywords ***
Open Browsers
    Open Browser ${Url} ${Browser}}
    Maximize Browser Window
Close Browsers
    Close All Browsers
Open Login Page
    Go To  ${Url}
Input Username
    [Arguments] ${Username}
    Input Text  id:Email
Input Password
    [Arguments] ${Passwod}
    Input Password  id: Password
Click Login
    Click Button    xpath:/html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]/button
