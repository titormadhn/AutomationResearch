*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Klik button "Pay Now"
    Click Element    //span[normalize-space()='Pay Now']
    Capture Element Screenshot    //span[normalize-space()='Pay Now']    embed
    Sleep    1s
    Capture Page Screenshot    embed
    Sleep    1s