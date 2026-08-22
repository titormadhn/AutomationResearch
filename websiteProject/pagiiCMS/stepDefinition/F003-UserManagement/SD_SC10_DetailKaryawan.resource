*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource

*** Keywords ***
Pilih dan klik detail salah satu data Employee List
    Sleep    2s
    Wait Until Element Is Visible    ${fieldsearch}
    Sleep    1s
    Click Element    ${fieldsearch}
    Sleep    1s
    Input Text    ${fieldsearch}    DamarAutomation
    Sleep    10s
    Click Element    (//button[@type='button'])[18]
    Wait Until Element Is Visible    //p[normalize-space()='Employee Detail']

Klik "Personal" di "Menu General" Employee Detail 
    Click Element    //span[normalize-space()='Personal']
    Wait Until Element Is Visible    (//div)[129]
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik "Employment" di "Menu General" Employee Detail
    Scroll Element Into View    //span[normalize-space()='Employment']
    Click Element    //span[normalize-space()='Employment']
    Wait Until Element Is Visible    (//div)[135]
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu "History" Employee Detail
    Scroll Element Into View    //span[normalize-space()='History']
    Click Element    //span[normalize-space()='History']
    Wait Until Element Is Visible    //span[normalize-space()='Contract']

Klik "Contract" di "Menu General" Employee Detail
     Scroll Element Into View    //span[normalize-space()='Contract']
    Click Element    //span[normalize-space()='Contract']
    Wait Until Element Is Visible    (//div)[140]
    Capture Page Screenshot    EMBED
    Sleep    1s


