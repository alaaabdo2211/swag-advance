*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${LOGIN_HEADER_LABEL} =     Swag Labs
${SIGNIN_USERNAME_TEXTBOX} =    id=user-name
${SIGNIN_PASSWORD_TEXTBOX} =    id=password
${SIGNIN_BUTTON} =       id=login-button

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${LOGIN_HEADER_LABEL} 


Login With Valid Credentials
      [Arguments]    ${USERNAME}    ${PASSWORD}
      Fill Username Field       ${USERNAME}
      Fill Password Field    ${PASSWORD}
      Click "Login" Button



Fill Username Field
    [Arguments]    ${USERNAME}
    Input Text    ${SIGNIN_USERNAME_TEXTBOX}    ${USERNAME}

Fill Password Field 
    [Arguments]    ${PASSWORD}
    Input Text     ${SIGNIN_PASSWORD_TEXTBOX}   ${PASSWORD}

Click "Login" Button
    Click Button    ${SIGNIN_BUTTON}