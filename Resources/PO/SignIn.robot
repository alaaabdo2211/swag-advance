*** Settings ***

Library    SeleniumLibrary
Library    ../../Libraries/MyCustomeLibrary.py
Resource             ../../Data/InputData.robot


*** Variables ***
${SIGN_IN_EMAIL} =          id=user-name
${SIGN_IN_PASSWORD} =       id=password



*** Keywords ***
Verify Page Loaded
    wait until page contains    ${LOGIN_HEADER_LABEL} 


Login With Valid Credentials
      [Arguments]    ${UserData}
      Fill Username Field       ${UserData.Username}
      Fill Password Field    ${UserData.Password}
      Click "Login" Button

Enter Credentials
    [Arguments]  ${Credentials}
    run keyword unless  '${Credentials[0]}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials[0]}
    run keyword unless  '${Credentials[1]}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials[1]}


Login With Invalid Credentials
      [Arguments]    ${UserData}
      Fill Username Field       ${UserData.Username}
      Fill Password Field    abc
      Click "Login" Button

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    [Return]  ${ExpectedErrorMessage[2]}

Fill Username Field
    [Arguments]    ${USERNAME}
    Input Text    ${SIGNIN_USERNAME_TEXTBOX}    ${USERNAME}

Fill Password Field 
    [Arguments]    ${PASSWORD}
    Input Text     ${SIGNIN_PASSWORD_TEXTBOX}   ${PASSWORD}

Click "Login" Button
    Click Button    ${SIGNIN_BUTTON}

Do Some Custom Thing
        Do Something Special