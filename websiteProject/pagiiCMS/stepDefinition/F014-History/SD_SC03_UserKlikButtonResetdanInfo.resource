*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
klik button info
    Click Element    xpath=//button[@title='Info']
    Capture Page Screenshot    embed
    Sleep    1s