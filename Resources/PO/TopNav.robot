*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${SHOPPING_CART_CONTAINER}=    css=#shopping_cart_container a.shopping_cart_link 




*** Keywords ***
Click "Shopping Cart" Container 
    Click Link    ${SHOPPING_CART_CONTAINER}
