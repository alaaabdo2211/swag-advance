*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${YOUR_CART_HEADER_LABEL} =     Your Cart
${CHECKOUT_BUTTON} =       id=checkout

*** Keywords ***


Verify Page Loaded
    wait until page contains    ${YOUR_CART_HEADER_LABEL} 

Checkout 
        Click Button    ${CHECKOUT_BUTTON}