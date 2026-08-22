*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Pilih satu nama dan klik button loop detail
    Wait Until Element Is Visible    xpath=(//*[name()='path'])[72]
    Click Element    (//button[@type='button'])[25]
    Wait Until Element Is Visible    //h2[normalize-space()='Overtime Detail']
    Sleep    2s
    Capture Page Screenshot    embed