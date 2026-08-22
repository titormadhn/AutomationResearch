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

#Main Case
Klik dropdwon History
    Scroll Element Into View    (//div[@role='button'])[17]
    Wait Until Element Is Visible    (//div[@role='button'])[17]
    Click Element    (//div[@role='button'])[17]
    Sleep    2s

Klik Menu Contract
    Scroll Element Into View    (//div[@role='button'])[18]
    Wait Until Element Is Visible    (//div[@role='button'])[18]
    Click Element    (//div[@role='button'])[18]
    Wait Until Page Contains    12-06-2026
    Capture Element Screenshot    (//div[normalize-space()='12-06-2026'])[1]     EMBED
    Wait Until Element Is Visible    (//button[@aria-label='Detail'])[1]
    Click Element    (//button[@aria-label='Detail'])[1]
    Wait Until Page Contains    12-June-2026
    Capture Element Screenshot    (//p[normalize-space()='12-June-2026'])[1]    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED
