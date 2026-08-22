*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#Untuk TestData
${typeRemote}    //li[normalize-space()='Remote Working']
${typeAll}    //li[normalize-space()='All']

*** Keywords ***
Klik checkbox filter
    Wait Until Element Is Visible    ${Checkbox_Filter}
    Click Element    ${Checkbox_Filter}
    Sleep    2s

Pilih filter Type ${filterType}
    Wait Until Element Is Visible    //div[@id='mui-component-select-method']
    Click Element    //div[@id='mui-component-select-method']
    Wait Until Element Is Visible    ${filterType}
    Click Element    ${filterType}
    Sleep    2s

Input start date
    Select Start date

Klik field Search & input keyword
    Wait Until Element Is Visible    ${fieldsearch}
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    Nisa
    Wait Until Page Contains    Nisa
    Sleep    2s
    Capture Page Screenshot    EMBED
    Press Keys    ${fieldsearch}    CTRL+a     BACKSPACE
    Sleep    1s
