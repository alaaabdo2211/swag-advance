*** Settings ***

Library    SeleniumLibrary
Resource    ../Data/InputData.robot


*** Keywords ***
Begin Web Test
    # set selenium speed          .2s
    set selenium timeout        10s

    #open browser
    Set Log Level    Debug 
    # log                         Starting the test case
    open browser                ${URL}      ${BROWSER}

    set window size             width=1935  height=1090

    Set Log Level    info


End Web Test
       close all browsers