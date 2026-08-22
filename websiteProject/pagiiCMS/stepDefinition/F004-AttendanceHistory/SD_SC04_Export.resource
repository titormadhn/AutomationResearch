*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Klik export dengan search keyword dan filter
    #Klik Checkbox Filter
    Wait Until Element Is Visible    ${Checkbox_Filter}
    Click Element    ${Checkbox_Filter}
    Sleep    2s
    #Pilih filter Type
    Wait Until Element Is Visible    //div[@id='mui-component-select-method']
    Click Element    //div[@id='mui-component-select-method']
    Wait Until Element Is Visible    //li[normalize-space()='Remote Working']
    Click Element    //li[normalize-space()='Remote Working']
    Sleep    2s
    Select Start date    #Pilih tanggal
    #Search & Input Keyword
    Wait Until Element Is Visible    ${fieldsearch}
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    Nisa
    Wait Until Page Contains    Nisa
    Sleep    2s
    #Export Button
    Click Element    (//button[@type='button'])[9]
    Wait Until Element Is Visible    (//div[@id='panel1a-header'])[1]
    Sleep    10s
    Wait Until Element Is Visible    //p[3]//*[name()='svg']
    Click Element    //p[3]//*[name()='svg']
    Capture Page Screenshot    EMBED
    Sleep    1s