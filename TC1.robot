*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TC_Login_Valid
    Open Browser    ${url}  ${browser}
    LoginCustomer
    Close Browser
TC_Invalid_Login
    Open Browser    ${url}  ${browser}
    LoginCustomer
    Close Browser
jdjd
    ${speed}=   Get Selenium Speed
   # Log To Console  ${speed}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed  2 seconds
    #Execute Javascript  window.scrollTo(0,150)
    #Title Should Be    nopCommerce demo store.

    RegisterCustomer
    #ScrollPage
    Close Browser





*** Keywords ***
LoginCustomer

    Click Link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Input Text  id:Email    venkat@gmail.com
    Input Password  id:Password    venkat@gmail.com
    Click Button  xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
RegisterCustomer
    Click Link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    Select Radio Button  Gender     M
    Input Text  id:FirstName    Venkat
    Input Password  id:LastName     Kamma
    Select From List By Label   DateOfBirthDay    1
    Select From List By Label   DateOfBirthMonth    January
    Select From List By Label   DateOfBirthYear     2000
    Input Text  id:Email    venkat@gmail.com
    Input Password  id:Password    venkat@gmail.com
    Input Password  id:ConfirmPassword  venkat@gmail.com
    Click Button   id:register-button
ScrollPage
    Execute Javascript  window.scrollTo(0,1500)


