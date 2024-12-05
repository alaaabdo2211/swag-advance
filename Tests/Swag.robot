*** Settings ***
Documentation       This is some basic info about whole suite
Library             SeleniumLibrary
Resource             ../Data/InputData.robot
Resource            ../Resources/Common.robot
Resource            ../Resources/SwagApp.robot
Resource            ../Resources/DataManager.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

#Run the script
Resource    ../Resources/Common.robot
#robot -d results tests/crm.robot



*** Test Cases ***

Should see corret error messages with invalid logins 
    ${InvalidLoginScenarios} =    DataManager.Get CSV Data    ${INVALID_CREDENTIALS_PATH_CSV} 
    SwagApp.Login with Many Invalid Credentials    ${InvalidLoginScenarios}

Should be abel to sign in
    [Documentation]    Test the login
    [Tags]    1002    Smoke    Login
    ${ReturnedInfo} =     SwagApp.Login With Valid Credentials        ${ADMIN_USER}
    Log    ${ReturnedInfo}

Should be abel to add new Customer
    [Documentation]    Test adding new customer
    [Tags]    1004    Smoke    Customers
    SwagApp.Login With Valid Credentials        ${ADMIN_USER}
    SwagApp.Add Products To Cart

Should be abel to checkout
    [Documentation]    Test the log out
    [Tags]    1006    Smoke    Logout
    SwagApp.Login With Valid Credentials        ${ADMIN_USER}
    SwagApp.Add Products To Cart
    SwagApp.Checkout