*** Settings ***
Documentation       This is some basic info about whole suite
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/SwagApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

#Run the script
Resource    ../Resources/Common.robot
#robot -d results tests/crm.robot
*** Variables ***
${BROWSER} =    chrome
${URL} =        https://www.saucedemo.com
${VALID_LOGIN_USERNAME} =    standard_user
${VALID_LOGIN_PASSWORD} =    secret_sauce


*** Test Cases ***
Should be abel to sign in
    [Documentation]    Test the login
    [Tags]    1002    Smoke    Login
    SwagApp.Login With Valid Credentials        ${VALID_LOGIN_USERNAME}    ${VALID_LOGIN_PASSWORD}

Should be abel to add new Customer
    [Documentation]    Test adding new customer
    [Tags]    1004    Smoke    Customers
    SwagApp.Login With Valid Credentials        ${VALID_LOGIN_USERNAME}    ${VALID_LOGIN_PASSWORD}
    SwagApp.Add Products To Cart

Should be abel to checkout
    [Documentation]    Test the log out
    [Tags]    1006    Smoke    Logout
    SwagApp.Login With Valid Credentials        ${VALID_LOGIN_USERNAME}    ${VALID_LOGIN_PASSWORD}
    SwagApp.Add Products To Cart
    SwagApp.Checkout