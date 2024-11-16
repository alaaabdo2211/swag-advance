*** Settings ***
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/Products.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/CheckoutInfo.robot
Resource    ../Resources/PO/CheckoutOverview.robot
Resource    ../Resources/PO/CompleteCheckout.robot


*** Variables ***

*** Keywords ***

Login With Valid Credentials
    [Arguments]    ${EMAIL}    ${PASSWORD}
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${EMAIL}    ${PASSWORD}
    Products.Verify Page Loaded


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
