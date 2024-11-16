*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${CHECKOUT_INFO_HEADER_LABEL} =     Checkout: Your Information
${CONTINUE_BUTTON} =       id=continue
${FIRST_NAME_TEXTBOX} =    id=first-name
${LAST_NAME_TEXTBOX} =    id=last-name  
${POSTAL_CODE_TEXTBOX} =    id=postal-code 
${CUSTOMER_FIRSTNAME} =    Alaa
${CUSTOMER_LASTNAME} =    Abdo
${CUSTOMER_POSTAL_CODE} =    00962



*** Keywords ***


Verify Page Loaded
    wait until page contains    ${CHECKOUT_INFO_HEADER_LABEL} 

Fill Customer Fields 
   input text                    ${FIRST_NAME_TEXTBOX}            ${CUSTOMER_FIRSTNAME}
   input text                    ${LAST_NAME_TEXTBOX}        ${CUSTOMER_LASTNAME}
   input text                    ${POSTAL_CODE_TEXTBOX}         ${CUSTOMER_POSTAL_CODE} 


Click "Continue" Button
       click button                ${CONTINUE_BUTTON}
