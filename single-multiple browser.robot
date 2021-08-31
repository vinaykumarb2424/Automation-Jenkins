*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/register?returnUrl=%2F
${url1}  https://demo.nopcommerce.com/login?returnUrl=%2F

*** Test Cases ***
CloseAllBrowsers
    Open Browser  ${url}    ${browser}
    Maximize Browser Window

    Open Browser  ${url1}}    ${browser}
    Maximize Browser Window

    Close All Browsers