*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${CHECKOUT_OVERVIEW_HEADER_LABEL} =     Checkout: Overview
${FINISH_BUTTON} =       id=finish



*** Keywords ***


Verify Page Loaded
    wait until page contains    ${CHECKOUT_OVERVIEW_HEADER_LABEL} 

Click Finish Button
       click button                ${FINISH_BUTTON}

