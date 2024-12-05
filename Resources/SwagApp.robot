*** Settings ***
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/Products.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/CheckoutInfo.robot
Resource    ../Resources/PO/CheckoutOverview.robot
Resource    ../Resources/PO/CompleteCheckout.robot
Library    ../Libraries/MyCustomeLibrary.py


*** Keywords ***

Login With Valid Credentials
    [Arguments]    ${UserData}
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${UserData}
    SignIn.Do Some Custom Thing
    Products.Verify Page Loaded
    [Return]    Logged in!
    


# Test Multiple Invalid Login Scenarios
#     [Arguments]  ${Credentials}
#     SignIn.Verify Page Loaded
#     SignIn.Login With Invalid Credentials    ${Credentials}
#     Verify Login Page Error Message  ${Credentials.ExpectedErrorMessage}

Login with Many Invalid Credentials
        [Arguments]    ${InvalidLoginScenarios}
        FOR    ${LoginScenario}    IN    @{InvalidLoginScenarios}
        run keyword and continue on failure    SignIn.Verify Page Loaded
        run keyword and continue on failure    Attempt Login    ${LoginScenario} 
        run keyword and continue on failure    Verify Login Page Error Message          ${LoginScenario} 
        END

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click "Login" Button
    Sleep  1s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}


Add Products To Cart
    Products.Add To cart
    TopNav.Click "Shopping Cart" Container
    Cart.Verify Page Loaded
    Cart.Checkout
    CheckoutInfo.Verify Page Loaded


Checkout
    CheckoutInfo.Fill Customer Fields
    CheckoutInfo.Click "Continue" Button
    CheckoutOverview.Verify Page Loaded
    CheckoutOverview.Click Finish Button
    CompleteCheckout.Verify Page Loaded

