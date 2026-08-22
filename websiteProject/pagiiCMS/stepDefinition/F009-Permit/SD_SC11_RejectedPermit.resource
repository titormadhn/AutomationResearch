*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Klik action "Rejected"
    Click Element    (//button[@type='button'])[17]
    Wait Until Element Is Visible    //textarea[@placeholder='Fill in notes']
    Sleep    1s

Klik button "Reject"
    Click Element    //span[normalize-space()='Reject']
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s