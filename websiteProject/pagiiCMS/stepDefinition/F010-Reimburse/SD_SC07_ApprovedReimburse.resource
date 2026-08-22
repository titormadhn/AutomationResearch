*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Klik action Approved
    Click Element    (//button[@type='button'])[13]
    Wait Until Element Is Visible    xpath=//div[contains(text(),'Reimburse Approve')]
    Sleep    1s

Klik button Approve
    Click Element    //span[normalize-space()='Approve']
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s