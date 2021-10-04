*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/


*** Test Cases ***
Launch
    LoginCustomer

*** Keywords ***
LoginCustomer
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Click Link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Input Text  id:Email    venkat@gmail.com
    Input Password  id:Password    venkat@gmail.com
    Click Button  xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    #Close Browser