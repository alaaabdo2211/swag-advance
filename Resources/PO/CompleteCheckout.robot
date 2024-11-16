*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${CHECKOUT_COMPLETED_HEADER_LABEL} =     Checkout: Complete!
${BACK_TO_PRODUCT_BUTTON} =       id=back-to-products



*** Keywords ***


Verify Page Loaded
    wait until page contains    ${CHECKOUT_COMPLETED_HEADER_LABEL} 

# Click Back Button
#        click button                ${BACK_TO_PRODUCT_BUTTON}