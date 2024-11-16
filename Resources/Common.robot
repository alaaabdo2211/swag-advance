*** Settings ***

Library    SeleniumLibrary

*** Variables ***



*** Keywords ***
Begin Web Test
    # set selenium speed          .2s
    set selenium timeout        10s

    #open browser
    log                         Starting the test case
    open browser                ${URL}      ${BROWSER}

    set window size             width=1935  height=1090




End Web Test
       close all browsers