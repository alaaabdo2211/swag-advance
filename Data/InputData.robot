*** Variables ***
${BROWSER} =    chrome
${URL} =        https://www.saucedemo.com
${VALID_LOGIN_USERNAME} =    standard_user
${VALID_LOGIN_PASSWORD} =    secret_sauce
&{ADMIN_USER} =    Username=standard_user    Password=secret_sauce
${LOGIN_HEADER_LABEL} =     Swag Labs
${SIGNIN_USERNAME_TEXTBOX} =    id=user-name
${SIGNIN_PASSWORD_TEXTBOX} =    id=password
${SIGNIN_BUTTON} =       id=login-button
${INVALID_CREDENTIALS_PATH_CSV} =  D:\\development1\\robot-scripts\\swag-advance\\Data\\Users.csv
