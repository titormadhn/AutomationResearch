*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Pilih salah satu data di tabel yang akan di Update
    Wait Until Element Is Visible    //h1[normalize-space()='overtime history']
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    helsa
    Sleep    1s

Klik action detail
    Wait Until Element Is Visible    xpath=(//*[name()='path'])[65]
    Sleep    10s
    Click Element    (//button[@type='button'])[19]
    Sleep    1s

Input required field (checkout, status)
    Wait Until Element Is Visible    //h2[normalize-space()='Overtime Detail']
    Scroll Element Into View    id=mui-component-select-status
    Sleep    5s
    Click Element    xpath=(//input[@type='text'])[4]
    #Field checkout
    Press Keys    xpath=(//input[@type='text'])[4]    CTRL+a    BACKSPACE 
    Input Text    xpath=(//input[@type='text'])[4]    1800      
    # Wait Until Element Is Visible    //div[@class='MuiPickersClock-container']
    # Click Element    xpath=//div[@class='MuiPopover-root']//div[@aria-hidden='true']
    #Field status
    Click Element    id=mui-component-select-status
    Wait Until Element Is Visible    //ul[@role='listbox']
    Click Element    //li[normalize-space()='Rejected']

Klik button update
    Click Element    //span[normalize-space()='Update']    #(//button[@type='button'])[30]
    Sleep    2s
    Capture Page Screenshot    embed
    Sleep    1s
