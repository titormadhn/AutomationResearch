*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource

*** Keywords ***
#Search Data
Klik Detail dengan ikon kaca pembesar di salah satu User
    Wait Until Element Is Visible    ${fieldsearch}
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    DamarAutomation
    Sleep    2s
    Wait Until Page Contains    DamarAutomation
    Click Element    (//div[@title='Detail'])[1]
    Sleep    2s

#Delete Contract
Klik dropdwon History
    Scroll Element Into View    (//div[@role='button'])[17]
    Wait Until Element Is Visible    (//div[@role='button'])[17]
    Click Element    (//div[@role='button'])[17]
    Sleep    2s

Klik Menu Contract
    Scroll Element Into View    (//div[@role='button'])[18]
    Wait Until Element Is Visible    (//div[@role='button'])[18]
    Click Element    (//div[@role='button'])[18]
    Sleep    2s
    Capture Page Screenshot    EMBED

Klik button Delete dengan ikon tempat sampah
    Wait Until Element Is Visible    (//button[@aria-label='Delete'])[1]
    Click Element    (//button[@aria-label='Delete'])[1]
    Wait Until Element Is Visible    (//button[normalize-space()='Yes'])[1]
    Click Element    (//button[normalize-space()='Yes'])[1]
    Sleep    2s
    Capture Page Screenshot    EMBED
    
