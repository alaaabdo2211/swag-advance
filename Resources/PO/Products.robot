*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${PRODUCTS_HEADER_LABEL} =     Products
${ADD_TO_CART_BUTTON} =       id=add-to-cart-sauce-labs-bike-light

*** Keywords ***


Verify Page Loaded
    wait until page contains    ${PRODUCTS_HEADER_LABEL} 

Add To cart
        Click Button    ${ADD_TO_CART_BUTTON}


