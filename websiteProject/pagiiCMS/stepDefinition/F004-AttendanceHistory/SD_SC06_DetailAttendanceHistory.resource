*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Pilih satu user dan klik button loop detail
    Wait Until Element Is Visible    xpath=(//*[name()='path'])[67]
    Click Element    (//button[@type='button'])[17]
    Wait Until Element Is Visible    (//div[starts-with(@class, 'MuiDialogContent-root')])
    ${validation_name}    Get Text    //div[normalize-space()='Andrea Weber']
    Log    ${validation_name}
    Element Should Contain    //div[normalize-space()='Andrea Weber']    ${validation_name}
    Sleep    2s
    Capture Page Screenshot    embed
